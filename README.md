# transport-normes-site

Ce repo est le code Hugo permettant de déployer le contenu de https://github.com/etalab/transport-normes en tant que site internet.

Le site est déployé sur https://normes.transport.data.gouv.fr

## Développement local

* Installation locale de [Hugo v0.85.0](https://github.com/gohugoio/hugo/releases/tag/v0.85.0) - pour le moment, et ajout au `PATH`
* `./build.sh` (qui reproduit ce qui est fait en production)

## Déploiement

La commande `build.sh` est lancée automatiquement.

Un commit sur la branche principale de https://github.com/etalab/transport-normes déclenche un redéploiement du site via [une Github Action](https://github.com/etalab/transport-normes/blob/main/.github/workflows/github-actions.yml) sur le repo du contenu (via une requête POST sur Netlify).
