# transport-normes-site
Ce repo est le code Hugo permettant de déployer le contenu de https://github.com/etalab/transport-normes en tant que site internet.

Le site est déployé sur https://normes.transport.data.gouv.fr


## Développement local

En local, après [avoir installé Hugo](https://gohugo.io/installation/), exécuter les commandes suivantes

```sh
git submodule update --init --recursive
hugo server
```

## Mise à jour du template

```
cd themes/PaperMod
git checkout v6.0
cd ../..
```

Pour vérifier les commits:

```
❯ git diff themes/PaperMod 
diff --git a/themes/PaperMod b/themes/PaperMod
index 8021be2..54a3c60 160000
--- a/themes/PaperMod
+++ b/themes/PaperMod
@@ -1 +1 @@
-Subproject commit 8021be2ddb5336bcc84682d4702ec43b7a579b81
+Subproject commit 54a3c6073518005182f3c3250ddb7e8c0cacd7ad
```

Puis committer:

```
git add themes/PaperMod
git commit -m "Bump PaperMod template to v6.0"
```

On peut faire un rendu en preview sur Netlify ou en local et comparer les répertoires si besoin.

## Commande de déploiement

La commande utilisée pour déployer le site sur Netlify est la suivante :

`git submodule update --init --remote content/normes && hugo --minify`

On initialise uniquement le submodule souhaité (le contenu des normes, pas le thème Hugo !), en passant l'option `--remote` pour aller lire la dernière version sur le repo en question.

Un commit sur la branche principale de https://github.com/etalab/transport-normes déclenche un redéploiement du site via [une Github Action](https://github.com/etalab/transport-normes/blob/main/.github/workflows/github-actions.yml) sur le repo du contenu (via une requête POST sur Netlify).
