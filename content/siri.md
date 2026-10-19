---
title: "SIRI"
layout: "miscellaneous"
summary: "comprendre SIRI"
---

**SIRI** (Service Interface for Real time Information) est un format d'échange permettant de décrire les données dynamiques et temps réel d'une offre de transport public. C'est une norme, publiée par le CEN (comité européen de normalisation) sous la référence [SIRI EN CEN/TS 15531](https://transmodel-cen.eu/index.php/siri/).

La spécification de SIRI se décompose en sept parties :

- Partie 1 : *Context and framework* (EN 15531-1:2015)
- Partie 2 : *Communications infrastructure* (EN 15531-2:2015)
- Partie 3 : *Functional service interfaces* (EN 15531-3:2015)
- Partie 4 : *Functional service interfaces - Facility Management* (CEN/TS 15531-4:2011)
- Partie 5 : *Functional service interfaces - Situation Exchange* (CEN/TS 15531-5:2016)
- Partie 6 : *Functional Service Interfaces: Control Actions* (CEN/TS 15531-6:2024)
- Partie 7 : *European Real Time Passenger SIRI Information Profile* (CEN/TS 15531-7:2024)

En complément des documents de spécification technique, SIRI fournit également un schéma W3C XML (XSD) qui peut être utilisé directement par les logiciels produisant, validant et utilisant les données. Ce schéma est disponible sur [l'espace de travail Github](https://github.com/TransmodelEcosystem/SIRI) du projet, géré par le CEN.

SIRI, comme NeTEx et OpRa, est un format dérivé de **[Transmodel]()** : il s'agit d'un modèle conceptuel de données qui a pour objectif de définir un vocabulaire commun pour l'échange de données structurées de transport public.

## Profil français

En France, le profil français de SIRI présenté sur ce site indique comment utiliser le format SIRI pour publier les données de transport conformes à la [réglementation en vigueur](). Il propose notamment une implémentation des besoins métiers nationaux.

La version actuellement en vigueur du profil est la version 1.8, publiée le 16 mars 2026.

[Consulter le profil français de SIRI]()

Vous pouvez également consulter :

- la [version 1.7 du profil](), publiée en avril 2024
- le brouillon de la [future version du profil]()

## Questions fréquentes

Où trouver des données SIRI couvrant le territoire français ?

De nombreux acteurs français publient leurs données dynamiques au format SIRI. Vous pouvez les retrouver sur le [Point d'Accès National](https://transport.data.gouv.fr/datasets?format=SIRI) en effectuant une recherche par format.

Que peut-on représenter avec SIRI ?

SIRI peut être notamment utilisé pour :

- Fournir des informations en temps réel sur les prochains départs à un arrêt, à afficher directement sur cet arrêt, sur Internet et via les systèmes de diffusion mobiles
- Diffuser des messages sur les perturbations et l'état de fonctionnement des services
- Échanger les mises à jour des horaires prévues et en temps réel
- Fournir des informations en temps réel sur la progression de chaque véhicule
- Gérer la synchronisation des correspondances garanties entre plusieurs réseaux

Quelle est la différence avec GTFS-RT ?

GTFS-RT est également un standard pour publier des informations de transport en temps réel.

TODO

Suis-je obligé(e) d'utiliser SIRI ?

En savoir plus sur [le cadre réglementaire]() entourant la publication des jeux de données de mobilité.

Je n'y comprends rien, qui peut m'aider ?

Si vous avez des questions ou souhaitez être accompagnés, vous pouvez vous rapprocher du [GT7]() ou poser des questions sur l'[espace de travail du GT7 sur Github](https://github.com/etalab/transport-profil-siri-fr).

Mon besoin n'est pas couvert, que puis-je faire ?

SIRI est un format d'échange vivant, qui évolue avec les besoins métiers des acteurs qui l'utilisent.

En savoir plus sur [la communauté et la gouvernance]() de SIRI.
