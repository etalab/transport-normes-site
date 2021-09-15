---
title: "Stream a paginated API with Elixir"
date: 2021-09-09T13:21:16+02:00
draft: false
tags: ["elixir"]
---

## The goal

You want to fetch data from an external API with Elixir, and this API is paginated.

Your code needs to do make API calls, but just the right number of them. Maybe you're only interested by the first 2 pages of results, and don't want  to fetch everything.

We'll use for this example the [data.gouv.fr](https://data.gouv.fr) api, the French portal for open data. Let's request a list of all datasets available.

```
curl https://demo.data.gouv.fr/api/1/datasets/

data : […]
facets : {}
next_page : "https://demo.data.gouv.fr/api/1/datasets/?page=2"
page : 1
page_size : 20
previous_page : null
total : 39259
```

We notice useful informations here : 
* `total : 39259`. The number of datasets available (nice !)
* `page_size : 20`. There are 20 datasets per page
* `next_page` : the url you should request to get the next results

## Meet Stream.resource

The stream module is made to support lazy operation and is a perfect candidate for that task. It provides a [Stream.resource]([function](https://hexdocs.pm/elixir/1.12/Stream.html#resource/3)) function. As the doc says it "emits a sequence of values for the given resource", which sounds good.

Stream.resource needs 3 functions as arguments, a `start_fun`, a `next_fun` and a `after_fun`.

1. With `start_fun` you initilize the accumulator. The accumulator being the information you pass from one API call to another. In our case, that will be the url to query.

2. `next_fun` is where the core business happens. A call to `next_fun` must return 2 things:
* a list of values that will emited by the stream
* an accumulator that will be passed as an argument to `next_fun` when all the values have been emitted and a new API call is necessary.

It can also return `{:halt, acc}` if there is nothing left to fetch on the API.

3. `after_fun` will be empty here, as we don't need to close anything when we're done.

## The Code

```elixir
start_fun = fn -> {"https://demo.data.gouv.fr/api/1/datasets/"} end
```
This one is easy, the start_fun initiates the accumulator with the url we are interested in.

Next, the `next_fun`:

```elixir

next_fun = fn
  nil ->
    # no url to query, we halt the stream
    {:halt, nil}

  {url} ->
    # we make a GET request on the url
    case HTTPoison.get(url) do
      {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
        # we decode the body from a string to an Elixir map
        {:ok, content} = Jason.decode(body)
        # we keep only what interests us; Here, what's in the data key
        items = content |> Map.get("data", [])

        # we return the results, and the next url to query 
        {items, {Map.get(content, "next_page")}}

      _ ->
        # something went wrong with the API call, we stop the stream
        {:halt, nil}
    end
end

```

Finally the `after_fun`, not doing much:

```elixir
after_fun = fn _ -> nil end
```

Now, let's create the stream :

```elixir
stream_api = fn -> 
  Stream.resource(
    start_fun,
    next_fun,
    after_fun
  )
end
```

And use it to fetch the first 50 results of the API

```elixir
stream_api.() |> Stream.take(50) |> Enum.to_list()
```

The stream will make a first API call when a first dataset is needed. It will store the 20 results present in the first page and emit one. Then it will emit on demand the 19 following results. If (and only if) asked for more, it will make a new API call and repeat the process. 

That's not many lines of code for all that goodness !

## The generic approach
In fact, all paginated api endpoints on data.gouv.fr follow the same pattern : the `data` key contains the data, and `next_page` contains the url to the next page. So the code we wrote is ready to query any paginated information on the API !

We just need to modify `start_fun` so it can accept an url as an argument.

```elixir
Mix.install([
  {:httpoison, ">= 0.0.0"},
  {:jason, ">= 0.0.0"}
])

# little modification here
start_fun = fn url -> 
  fn -> {url} end
end

next_fun = fn
  nil ->
    {:halt, nil}

  {url} ->
    case HTTPoison.get(url) do
      {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
        {:ok, content} = Jason.decode(body)
        items = content |> Map.get("data", [])

        {items, {Map.get(content, "next_page")}}

      _ ->
        {:halt, nil}
    end
end

after_fun = fn _ -> nil end

stream_api = fn url ->
  Stream.resource(
    # and here !
    start_fun.(url),
    next_fun,
    after_fun
  )
end

# fetch some datasets
datasets = stream_api.("https://demo.data.gouv.fr/api/1/datasets/") |> Stream.take(50) |> Enum.to_list()

# fetch some discussions
discussions = stream_api.("https://demo.data.gouv.fr/api/1/discussions/") |> Stream.take(50) |> Enum.to_list()
```

We can now fetch any paginated data from the data.gouv API using the same simple function :tada:.

Just an note : I added some `Mix.install` instructions in the snippet above, so you can just copy and paste it in an Elixir [Livebook](https://github.com/livebook-dev/livebook) and it will work.