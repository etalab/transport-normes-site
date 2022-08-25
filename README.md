# transport-normes-site
Ce repo est le code Hugo permettant de déployer le contenu de https://github.com/etalab/transport-normes en tant que site internet.

Le site est déployé sur https://normes.transport.data.gouv.fr/.

## Commande de déploiement

La commande utilisée pour déployer le site sur Netlify est la suivante :

`git submodule update --init --remote content/posts && hugo --minify`

On initialise uniquement le submodule souhaité (le contenu des normes, pas le thème Hugo !), en passant l'option `--remote` pour aller lire la dernière version sur le repo en question.

Un commit sur la branche principale de https://github.com/etalab/transport-normes déclenche un redéploiement du site via une Github Action sur le repo du contenu  (via une requête POST sur Netlify).
