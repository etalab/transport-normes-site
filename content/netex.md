---
title: "NeTEx"
layout: "miscellaneous"
summary: "comprendre NeTEx"
---

**NeTEx** (Network Timetable Exchange) est un format d'échange permettant de décrire les données théoriques planifiées d'une offre de transport public. C'est une norme, publiée par le CEN (comité européen de normalisation) sous la référence [NeTEx CEN/TS 16614](https://transmodel-cen.eu/index.php/netex/).

La spécification de NeTEx se décompose en six parties :

- Partie 1 : topologie des réseaux (les réseaux, les lignes, les parcours commerciaux les missions commerciales, les arrêts et lieux d’arrêts, les correspondances et les éléments géographiques en se limitant au strict minimum pour l’information voyageur) - référence CEN/TS 16614-1:2014
- Partie 2 : horaires théoriques (les courses commerciales, les heures de passage graphiquées, les jours types associés ainsi que les versions des horaires) - référence CEN/TS 16614-2:2014
- Partie 3 : information tarifaire (uniquement à vocation d’information voyageur) - référence CEN/TS 16614-3:2015
- Partie 4 : profil européen pour l’information voyageur (EPIP) - référence CEN/TS 16614-4:2017
- Partie 5 : nouveaux modes (les véhicules partagés en libre service, les courses partagées, etc.) - référence CEN/TS 16614-5:2021
- Partie 6 : profil européen pour l’information voyageur en lien avec l’accessibilité (EPIAP) - CEN/TS 16614-6:2024

En complément des documents de spécification technique, NeTEx fournit également un schéma W3C XML (XSD) qui peut être utilisé directement par les logiciels produisant, validant et utilisant les données. Ce schéma est disponible sur [l'espace de travail Github](https://github.com/TransmodelEcosystem/NeTEx) du projet, géré par le CEN.

NeTEx, comme SIRI et OpRa, est un format dérivé de **[Transmodel]()** : il s'agit d'un modèle conceptuel de données qui a pour objectif de définir un vocabulaire commun pour l'échange de données structurées de transport public.

## Profil français

En France, le profil français de NeTEx présenté sur ce site indique comment utiliser le format NeTEx pour publier les données de transport conformes à la [réglementation en vigueur](). Il propose notamment des traductions en français des concepts de la norme européenne, ainsi qu'une implémentation des besoins métiers nationaux.

La version actuellement en vigueur du profil est la 2.4, publiée le 6 mars 2026.

[Consulter le profil français de NeTEx]()

Vous pouvez également consulter :

- la [version 2.3 du profil](), publiée en décembre 2024
- le brouillon de la [future version du profil]()

## Ressources additionnelles

Pour faire vos premiers pas avec NeTEx, vous pouvez consulter l'enregistrement d'une session de formation en français réalisée en 2025 :

- première partie : [Introduction et Outils](https://dai.ly/k6RAEIXRZncYtDDcI5K)
- deuxième partie : [Réseau](https://dai.ly/k6XxuP17I9kk0DDcI5M)
- troisième partie : [Multimodalité](https://dai.ly/k49z59b7zqxW6ADcI5O)
- quatrième partie : [Accessibilité](https://dai.ly/k2ytnBXq1e9wbODcI5I)
- [Supports de formation et ressources présentées](https://github.com/etalab/netex-france-formation)

## Questions fréquentes

Où trouver des données NeTEx couvrant le territoire français ?

De nombreux acteurs français publient leurs données au format NeTEx. Vous pouvez les retrouver sur le [Point d'Accès National](https://transport.data.gouv.fr/datasets?format=NeTEx) en effectuant une recherche par format.

Que peut-on représenter avec NeTEx ?

NeTEx a pour objectif de couvrir toute l'information utile pour préparer un trajet. Ce comprend notamment

- les horaires des transports publics, avec les arrêts, trajets, heures de départ ou fréquence de passage, correspondances.
- la structure du réseau, y compris les topologies complexes (lignes circulaire, trajets spéciaux, etc)
- les informations géographiques associés aux objets de transport (position des arrêts, tracés des lignes, etc)
- les calendriers des services, avec les jours de fonctionnement, les jours fériés et autres exceptions
- des données sur l'accessibilité des services aux passagers à mobilité réduite ou à besoins spécifiques
- des informations sur les opérateurs assurant le service
- des informations tarifaires, qu'il s'agisse de billets simples ou de tarifs forfaitaires, par zone, etc
- des données d'ordre opérationnelle (non utiles directement pour l'information voyageur)
- des informations sur les services réguliers, mais aussi les services à la demande ou les modes plus individuels tels que le covoiturage ou les véhicules en libre service

Quelle est la différence avec GTFS ?

GTFS est également un standard pour publier des informations de transport.

NeTEx a un périmètre d'application plus large que GTFS. Par exemple, NeTEx propose une description plus riche de l'accessibilité et de la tarification.

Voici quelques autres différences :

- GTFS a été conçu en premier lieu pour l'information voyageur (bien que d'autres applications soient possibles). NeTEx traite aussi l’ensemble des concepts nécessaires en entrée et sortie des systèmes de planification de l’offre (graphiquage, etc.) et des SAE (Systèmes d’Aide à l’Exploitation)
- GTFS est centré sur le transport en commun. NeTEx adresse en complément les véhicules partagés, les équipements en gare, les parkings, les points d'intérêt, etc
- GTFS utilise un format CSV là où NeTEx s'appuie sur un format XML

GTFS n'est pas basé sur le modèle conceptuel de Transmodel, bien qu'il soit possible de réaliser des correspondances entre la plupart des concepts et attributs, et donc des conversions.

Comment valider un jeu de données NeTEx ?

Le Point d'Accès National met à disposition divers [outils de validation](https://transport.data.gouv.fr/validation) dont un validateur NeTEx.

Il est également recommandé de valider les fichiers en utilisant la XSD de NeTEx pour s'assurer de la conformité du format (mais il n'existe cependant pas de XSD couvrant les spécificités métier du profil français).

Suis-je obligé(e) d'utiliser NeTEx ?

En savoir plus sur [le cadre réglementaire]() entourant la publication des jeux de données de mobilité.

Je n'y comprends rien, qui peut m'aider ?

La section "Ressources additionnelles" de cette page indique quelques documents didactiques qui vous permettront de comprendre les bases pour prendre en main le format. Puis, si vous avez des questions ou souhaitez être accompagnés, vous pouvez vous rapprocher du [GT7]().

Mon besoin n'est pas couvert, que puis-je faire ?

NeTEx est un format d'échange vivant, qui évolue avec les besoins métiers des acteurs qui l'utilisent.

En savoir plus sur [la communauté et la gouvernance]() de NeTEx.
