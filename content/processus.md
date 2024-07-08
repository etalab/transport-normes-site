---
title: "Les profils français des normes européennes : processus technique de rédaction, validation et publication"
date: 2024-06-06
draft: true
---

# Introduction
Ce document a été rédigé dans le cadre des travaux de normalisation menés par le Bureau de normalisation pour les transports, les routes et leurs aménagements (BNTRA), au sein de la Commission de Normalisation Transport Public (CN03) et, plus particulièrement, de son Groupe de Travail sur l’information voyageur et l’exploitation des services de mobilités (GT7).

Le groupe de travail a été mandaté pour piloter l’usage de l’outil [GitHub](https://github.com/) pour la rédaction, la validation et la publication des profils français (aussi appelés profils France) des normes européennes ayant trait au Transport Public. La publication de ces profils se faisant sur le site [normes.transport.data.gouv.fr](https://normes.transport.data.gouv.fr/) (ci-après nommé "site"), ce document a été rédigé avec l'appui des équipes du [Point d'Accès National aux données de transport](https://transport.data.gouv.fr/) (ci-après nommé "PAN") qui ont la gestion du site de publication à ce jour.

Ce document a un double objectif :
- Accompagner et documenter les travaux du GT7,
- Proposer un processus technique de travail avec l'outil GitHub aux autres GTs de la CN03 et autres groupes concernés pour leurs travaux.


# Périmètre de publication du site
À ce jour, il a été décidé que feront l’objet de publication sur le site l’ensemble des profils France des normes européennes produits par le GT7 et GT9, à savoir :
- Le profil français  de la norme européenne NeTEx et ses différents composants (appelés “sous-profils”)
  - Profil France - Éléments communs
  - Profil France - Description des arrêts
  - Profil France - Horaires
  - Profil France - Description des réseaux
  - Profil France - Accessibilité
  - Profil France - Tarifs
  - Profil France - Parkings (porté par le GT9)
- le profil français de la norme européenne SIRI.

À terme, les schémas nationaux issus des travaux de la Fabrique des Mobilités seront également publiés et référencés sur le PAN. Cependant, le site exact de publication n’a pas encore été défini. Pour rappel, ces schémas nationaux sont :
- Chapeau standard MAS
- Standard Covoiturage - Open Carpooling Service Standard (OCSS)
- Standard Compte Mobilité Standardisé

Cependant, le processus détaillé ci-après a pour vocation d’être élargi à l’ensemble des travaux des GTs de la CN03. Les listes ci-dessus seront donc amenées à évoluer.


# Les profils de normes, standards, spécifications techniques et schémas nationaux
## Définitions
**Norme** : document établi par un consensus et approuvé par un organisme reconnu (ex. AFNOR, CEN), qui fournit, pour des usages communs et répétés, des règles, des lignes directrices ou des caractéristiques, pour des activités ou leurs résultats, garantissant un niveau d'ordre optimal dans un contexte donné. Ces normes sont établies au sein de groupes de travail ou comités techniques d’instances de normalisation. Tout changement apporté à une norme doit faire l’objet d’un vote formel au sein de ces instances de normalisation organisé auprès de leurs membres. Les normes européennes sont produites par le CEN, CENELEC ou ETSI.

> Exemple : Transmodel

**Profil de norme** : sous-ensemble défini à partir d’une norme ou d’un standard européen (CEN) qui peut comporter des règles spécifiques. Dans le cadre des travaux de la CN03, ces profils sont produits en français par ses groupes de travail. 

Dans le cas de la norme NeTEx, il existe également des sous-profils pour définir plus finement certains aspects des transports publics (ex. Accessibilité) ; leur ensemble forme le profil France de la norme NeTEx.

> Exemple : NeTEx – Profil France   et son sous profil NeTEx – Profil France - Accessibilité

**Standard** : référentiel ou ensemble de recommandations développées et préconisées par un groupe autre qu’une instance de normalisation nationale ou internationale ou non approuvé par ces dernières pour un usage national ou international. On ne parle de standard qu'à partir du moment où le référentiel a une diffusion large, on parle alors de standard de facto (standard de fait). Un standard est ouvert quand le référentiel est diffusé librement.

> Exemple : GTFS

**Spécification technique** : tout document normatif établi par une instance de normalisation (ex. CEN) qui peut co-exister avec un standard national mais ne peut entrer en conflit avec une norme existante. Ces documents sont généralement issus d’un besoin spécifique ne pouvant pas encore aboutir à une norme par manque de consensus au sein de l’ensemble des membres ou sur demande expresse des parties prenantes (ex. DG MOVE) dans le but de conserver un cycle de vie plus court d’élaboration de documents normatifs. Le plus souvent, elles sont rédigées en vue d’une future harmonisation ou pour permettre des expérimentations ou pour s’adapter à des technologies évolutives.

> Exemple : SIRI sur certaines parties

**Schéma national** : 
tout autre document issu d’un groupe de travail du BNTRA ou du PAN dont la gouvernance ne dépend pas directement d’instances de normalisation européennes ou internationales. Ces documents sont généralement issus d’un besoin spécifique de standardisation des échanges de données requises à un niveau national sans qu’il existe une norme ou standard adéquat. Ces schémas ont, le plus souvent, vocation à devenir des standards nationaux, voire des normes européennes.

> Exemple : Aménagements cyclables

Dans le reste du document, "documents techniques" fera référence aux profils de normes, standards et spécifications techniques sans distinction.

## De l'usage des profils dédiés
Si un organisme souhaite avoir un profil dédié à ses usages, il est très fortement recommandé que ce profil soit basé sur les profils nationaux publiés sur le site. Cela a pour but principal de maintenir l’interopérabilité des données échangées au niveau national. En conséquence, le profil dédié contiendra :
- Une référence explicite au profil national ayant servi de base au profil dédié,
- Les explications liées à la création de sous-ensemble de champs ou d’attributs du profil national,
- Les règles explicites du profil dédié,
- Des exemples propres au profil dédié et à sa constellation d’acteurs pour faciliter leurs échanges de données.

Il est également recommandé de ne pas republier l’intégralité du profil ayant servi de base de travail. Cela permettra :
- D'en faciliter la lecture, réduite aux seuls éléments distinctifs des parties spécifiques au profil dédié,
- De s’assurer qu’il n’existe pas de contradictions entre le profil France et le profil dédié, le premier servant de référence.

Enfin, avant d’entamer la rédaction d’un profil dédié, il est préférable de se rapprocher du groupe de travail ayant eu la charge du profil national. Un premier échange pourrait :
- Définir si un profil dédié est nécessaire,
- Aider à la prise en main du profil France,
- Soutenir le cadrage du profil dédié et sa mise en cohérence avec le profil national.


# Processus technique de rédaction, validation et publication
Ce processus technique comprend trois phases principales pouvant être réalisées en parallèle :
- La rédaction, puis modification ou révision continue de la version de travail avec des propositions de modification libres validées par des personnes identifiées au sein des groupes de travail concernés,
- La définition d’une version « officielle » validée par l’ensemble des membres du groupe de travail concerné, avalisé par la CN03 et la DGITM/MINT, et qui est dotée d’un numéro de version,
- La publication de la version validée sur le site.

Le schéma ci-après illustre les trois phrases, en se plaçant dans le cadre de profils pilotés par le GT7 au sein de la CN03 :
![processus](https://github.com/TuThoThai/transport-profil-netex-fr/blob/Process-Publication/Processus%20v2.png)

## La rédaction, modification ou la révision
La rédaction ou la révision des documents techniques se fait au sein de groupes de travail dédiés. Ces groupes de travail peuvent dépendre de la CN03 (BNTRA), du PAN ou de la Fabrique des Mobilités. Chaque groupe de travail établit ses procédures internes de rédaction, modification ou révision du contenu. Chaque groupe établit également ses rôles de contribution et validation.

Pour faciliter la publication des travaux sur le site, il est fortement demandé aux groupes de travail de respecter les règles suivantes :
- Les documents à publier doivent être au format Markdown[^1],
- Ils doivent être mis à disposition dans un répertoire GitHub stable dans le temps, sachant que ce répertoire peut être sous l’ombrelle directe de chaque groupe de travail ou du PAN ou de toute autre organisation mandatée.

Pour bien différencier les versions de travail des versions stables, nous suggérons à tous les groupes de travail d’organiser leur répertoire GitHub comme suit:
- Branche principale (_main_) pour tous les documents de travail (ou version de développement) ; les travaux sur cette branche n’ont pas de valeur juridique et n’engagent aucune partie prenante.
- Les contributeurs créent une branche spécifique pour leur proposition de modification, qui doit se faire via une demande de tirage (_pull request_). Cette dernière sera ensuite commentée, retravaillée et validée par les autres contributeurs.
- Une fois que la proposition est considérée comme qualitative et validée par les contributeurs, une des personnes en charge des validations inclut la modification dans la version de travail "_main_".

Il est à noter que le choix a été fait de privilégier les _squash merge_ pour toute modification dans une volonté de meilleure clarté de l’historique des changements.

Notamment lors de l’initialisation des profils et après création de son chemin de fer, il est très fortement conseillé de travailler sur des petites modifications pour qu’elles soient plus simples à relire par les autres contributeurs.

Si le profil est assez "actif", il est également conseillé de le réviser ou modifier assez fréquemment pour ne pas oublier les retours / commentaires reçus ou de laisser les demandes de changer trop longtemps dans le répertoire GitHub. La fréquence idéale est de 2-3 mois.

## L'aval pour publication
Une fois la proposition de changement dans la branche principale du répertoire GitHub et avant sa publication sur le site, le groupe de travail doit vérifier que le fruit de leurs travaux est prêt à être publié. Doivent être vérifiés les éléments suivants :
- Concordance du contenu avec les derniers avals donnés par l’ensemble des membres du groupe de travail,
- Résolutiojns de toutes les questions (_issues_) ou demandes de changements (Pull Requests) relatives à la version à publier, il peut également être décidé que ces questions ou demandes seront traitées lors de l’élaboration de la version suivante,
- Formatage correct en Markdown du document,
- Indentation correcte du niveau de version (voir au §5 pour plus de détails).

Il est conseillé que :
- Les avals de contenu se fassent en session plénière des groupes de travail concernés,
- La résolution des questions et demandes de changements soient faites en amont de l’aval en plénière par l’ensemble des contributeurs,
- D'avoir des personnes bien identifiées au sien de chaque groupe de travail et qui ont en charge la gestion de l’éditorial, du formatage et de la gestion des versions,
- D'avoir au moins deux personnes par groupe de travail en charge de l’aval avant publication.

À noter que pour les travaux pilotés au sein des groupes de travail de la CN03, toute validation de contenu avant publication se fait en deux étapes :
1. En session plénière du GT concerné (ex. GT7 pour le profil SIRI),
2. En session plénière de la CN03.

Voir le paragraphe suivant pour plus de détails sur la demande de publication au sein de la CN03.

## La publication
Une fois ces éléments vérifiés, la demande de publication prend la forme d’une release GitHub avec la validation d’un commit donné. Les modalités précises de cette demande de publication seront détaillées par la suite dans un ticket dédié dans le répertoire dédié à la publication des documents techniques sur le site.

Cette demande doit également donner lieu à la création d’une « tuile » dans le [projet GitHub}(https://github.com/orgs/etalab/projects/35) dédié à la publication.

Cette demande se fait en parallèle du processus de normalisation mis en place au sein de la CN03, à savoir une présentation officielle du contenu des documents techniques lors d’une plénière avec demande d’approbation par l’ensemble des membres de la CN03. Cette approbation peut se faire lors de la plénière elle-même, via une consultation des membres (usage de l’outil PFC AFNOR) ou à la plénière suivante. Ce n’est qu’une fois cette approbation reçue en CN03 que les documents techniques sont prêts à être publiés.

Il est à noter qu’à ce jour l’ensemble des profils de NeTEx et SIRI publiés sur le site sont en complément d’une obligation légale d’ouverture des données de transport, c’est-à-dire mentionnés dans des arrêtés. Après validation du contenu au sein de la CN03, la publication doit recevoir une validation formelle par la DGITM/MINT avant qu’elle ne soit réalisée.

Les équipes en charge du site, à ce jour celle du PAN, se charge de la publication une fois l’aval officiel reçu par le groupe de travail et de son représentant, mandaté par la CN03. Cet aval doit être documenté dans GitHub par les personnes ayant reçu le mandat de leurs pairs au sein du groupe de travail.

La publication se fait telle quelle et sans modification du contenu à publier.

Il est à noter qu’un delta temporaire peut exister entre la date de validation du contenu à publier et sa publication officielle sur le site. Pour les « anciens » profils des normes, soit ceux rédigés avant la mise en place de la procédure décrite dans ce document et l’usage de l’outil GitHub, ce delta peut aller jusqu’à 12 mois. Pour tous les travaux de rédaction ou modification de profils de normes entamés en 2024, ce delta ne devrait pas dépasser 45 jours. 


# Gestion des versions et sous-profils
## Normes européennes (NeTEx et SIRI)
Il a été décidé que la numérotation des versions des profils français de normes européennes, en l’occurrence NeTEx et SIRI, se ferait sur deux niveaux uniquement. La convention retenue est :
- Toujours conserver "v" devant la numérotation de la version,
- Niveau 1 (majeur) : numéro de version qui ne change qu’en cas de non-rétrocompatibilité d’une nouvelle version,
- Niveau 2 (mineur) : numéro de version qui change au fur et à mesure des modifications apportées aux différents profils et qui sont intégrées dans une publication (_release_). Ce niveau de version doit assurer une rétrocompatibilité avec les versions précédentes.

À chaque changement de numérotation au niveau 2 des versions, une publication officielle sera faite (release). Il est possible qu’une nouvelle version n’apporte qu’une correction orthographique ou une légère modification de l’un des sous-profils.

Il est à noter que pour conserver une certaine agilité des profils des normes européennes, il a été choisi que :
- Les corrections de fautes de frappe (typos) seraient regroupées pour un traitement simultané au sein d’une nouvelle version de niveau 2 et non traitées au fil de l’eau,
- Le rythme de publication d’une nouvelle version de niveau 2 se fera tous les 2 ou 3 mois, si nécessaire.

## Gestion des sous-profils de NeTEx
Dans la mesure où NeTEx a donné lieu à la rédaction de plusieurs sous-profils français (ex. accessibilité, éléments communs, etc.), il a été décidé que tout changement dans un sous-profil entraine un changement de version au niveau 2 pour l’ensemble des autres sous-profils. Cela permettra une prise en main plus aisée du profil français de NeTEx dans son ensemble.

## Relation entre les versions des profils de NeTEx et SIRI
Dans le cadre des travaux sur un profil dédié au nouveaux modes (ex. vélo en libre-service), il doit y avoir une certaine correspondance entre les versions des profils français de NeTEx et SIRI.

Il est proposé que cette correspondance soit notée au début des profils concernés. Par exemple, on pourra avoir en début de profil l’indication comme suit :
> Les profils français de NeTEx en v1.17 sont à utiliser avec le profil français de SIRI en v1.7


# Rôles
Les rôles des différentes parties prenantes à la publication des documents techniques sont comme suit :

|Rôle|Groupe / Personne / Organisation|
|---|---|
|Rédaction de contenu|Équipe de travail dédiée au sein d’un groupe de travail et/ou organisation mandatée par ce dernier (ex. équipe « nouveaux modes » au sein du GT7 pour le sous-profil NeTEx)|
|Garant du contenu|Tous les membres du groupe de travail (ex. GT7 pour les profils SIRI)|
|Garant de la gestion des versions|Membres mandatés au sein des groupes de travail, généralement la personne en charge de l’animation et de la rédaction du contenu (ex. Tu-Tho Thai et Thierry Hénault pour le sous-profil « nouveaux modes » de NeTEx)|
|Aval formel du contenu avant demande de publication|CN03 pour tous les profils et DGITM / MINT pour les profils de NeTEx et SIRI mentionnés dans les arrêtés|
|Responsable des répertoires contenant les documents techniques|Rôle temporairement porté par l’équipe qui a la gestion du site, aujourd’hui l’équipe du PAN. À ce jour, il n’y a pas de confirmation de l’organisation ou du groupe qui tiendra ce rôle final.|
|Responsable de la publication|Équipe qui a la gestion du site, aujourd’hui l’équipe du PAN|
|Responsable de la politique d'ouverture de données|DGITM/SDMINT/MINT3|


# Accompagnement
Dans la mesure où il a été acté que l’outil GitHub serait utilisé et que les équipes du GT7 ont la charge d’initier et de documenter le processus, les autres GTs intéressés et concernées pourront bénéficier d’un accompagnement de la part d’experts du GT7, notamment Christophe Duquesne, Pascal Rhod et Tu-Tho Thai.

Cet accompagnement peut couvrir :
- La prise en main de GitHub,
- L'usage du format Markdown pour l’ensemble des documents,
- Le processus décrit dans ce document retenu par le GT7 pour NeTEx et SIRI.






[^1]: Page [officielle](https://www.markdownguide.org/) en anglais - Page [Wikipédia](https://fr.wikipedia.org/wiki/Markdown) en français
  
