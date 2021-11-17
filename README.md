# normes-tc-test
Ce repo est le code Hugo permettant de déployer le contenu de https://github.com/fchabouis/normes-tc-content-test en tant que site internet.

Le site de test actuellement utilisé pour le déploiement est https://elegant-carson-e21034.netlify.app/

Reste à faire :
- [x] numérotation automatique des tables
- [ ] mettre un design état-compatible sur le site
- [ ] peut-on avoir la numérotation des parties dans la tables des matières ?
- [ ] faire en sorte qu'un push sur https://github.com/fchabouis/normes-tc-content-test génère un déploiement sur netlify.

# Notes techniques

normes-tc-content-test est le contenu du site en markdown. Il est dans un repo à part.

Il a été ajouté à ce projet en tant que git "submodule".

Pour ajouter un submodule qui track une branche (main) en particulier, on utilise la commande :
`git submodule add -b main https://github.com/fchabouis/normes-tc-content-test`

Attention, il ne faut pas d'URI de la forme `git@github.com:fchabouis/normes-tc-content-test.git` dans le fichier `.gitmodules`.

Ensuite côté déploiement, j'utilise la commande suivante pour déployer : 

`git submodule update --init --remote content/posts && hugo --minify`

On initialise uniquement le submodule souaité (pas le thème Hugo !), en passant l'option --remote pour que aller lire la dernière version sur le repo en question.
