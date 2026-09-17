# SpliitLike-RPCGEN

# Application de co-abonnement répartie avec RPC

Application client-serveur développée en **C** dans le cadre d'un projet universitaire sur les **applications réparties** et les **appels de procédures distantes (RPC)**.

Le projet s'inspire du fonctionnement d'une plateforme de **co-abonnement** : les utilisateurs peuvent créer un compte, se connecter, consulter les services disponibles, consulter les co-abonnements et gérer leurs abonnements.

## Fonctionnalités

* Inscription d'un nouvel utilisateur
* Authentification client-serveur
* Consultation des services disponibles
* Consultation des co-abonnements
* Création d'un abonnement
* Gestion des abonnements
* Simulation du paiement d'un abonnement
* Désinscription d'un utilisateur
* Gestion des erreurs lors des appels RPC

Le scénario du projet couvre notamment les étapes d'inscription, de connexion, de consultation des services, de gestion des co-abonnements, de paiement, de déconnexion et de désinscription.

## Architecture

L'application est organisée selon une architecture **client-serveur**.

```text
                 ┌─────────────────────┐
                 │       Client        │
                 │                     │
                 │  Application en C   │
                 └──────────┬──────────┘
                            │
                     Appels RPC / UDP
                            │
                            ▼
                 ┌─────────────────────┐
                 │       Serveur       │
                 │                     │
                 │  Services RPC      │
                 │  Gestion comptes    │
                 │  Abonnements        │
                 └─────────────────────┘
```

Le client utilise `clnt_create()` pour établir la communication avec le serveur RPC en UDP et invoque différentes procédures distantes telles que l'inscription, la connexion, la consultation des services ou la gestion des abonnements.

## RPC et rpcgen

Les interfaces et structures utilisées pour les appels distants sont définies à travers le mécanisme **RPC** et générées avec **rpcgen**.

Le serveur implémente notamment les procédures distantes suivantes :

```text
init
inscription
connexion
lister_services
lister_abonnement
creer_abonnement
payer_abonnement
desinscription
```

Le serveur maintient les comptes et les abonnements et fournit les données demandées par les clients.

## Gestion des comptes

Le serveur permet de :

1. créer un compte ;
2. vérifier les informations de connexion ;
3. maintenir les comptes côté serveur ;
4. supprimer un compte lors d'une désinscription.

Les informations des comptes sont conservées dans des structures côté serveur pour les besoins du projet.

## Gestion des services et abonnements

Le serveur possède une liste de services disponibles et permet au client de la consulter.

La gestion des abonnements comprend notamment :

* l'identification du service ;
* le tarif ;
* le nombre de places ;
* le compte associé ;
* les paramètres de partage ;
* la création d'un abonnement ;
* la consultation des abonnements.

## Simulation du paiement

Le projet contient également une procédure dédiée au paiement.

Il s'agit d'une **simulation de paiement** réalisée dans le cadre du projet : aucun service de paiement réel n'est intégré.

## Technologies

* **C**
* **RPC**
* **rpcgen**
* **UDP**
* **Architecture client-serveur**
* **Programmation réseau**
* **Applications réparties**
* **Linux**

## Objectifs pédagogiques

Ce projet avait pour objectif de mettre en pratique :

* les architectures client-serveur ;
* les applications distribuées ;
* les appels de procédures distantes ;
* la génération de code avec `rpcgen` ;
* la communication réseau ;
* la conception d'un service réparti ;
* la gestion des erreurs lors des communications entre client et serveur.

## Structure du projet

```text
.
├── client
│   └── ...
├── serveur
│   └── ...
├── spliiit.x
├── spliiit.h
└── README.md
```

> La structure exacte peut varier selon l'organisation des fichiers du dépôt.

## Contexte

**Projet universitaire — Applications réparties / RPC**

Projet réalisé autour d'un scénario de service de co-abonnement, avec développement d'un client et d'un serveur communiquant par RPC.

## Licence MIT
