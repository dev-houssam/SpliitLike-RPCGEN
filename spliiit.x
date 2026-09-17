struct compte {
	int  id;
	char passwd[12];
	char nom[10];
	char prenom[10];
	int  age;
	char role;
	char pseudo[50];
	char pays[20];
	int etat;
};
typedef struct compte Compte;

struct listeCompte{
	int nb_instance;
	int nb_compteMax;
	Compte comptes[10];
};

typedef struct listeCompte ListeCompte;

struct service {
	int id;
	char intitule[20];
	char description[50];
	double prix;
	int nbPlaceInitial;
};
typedef struct service service;

typedef service Service;

struct listeService {
	int taille;
	int capamax;
	Service services[10];
};
typedef struct listeService listeService;

typedef listeService ListeService;



struct abonnement_abn{
	int abn_id;
	char abn_intitule[20];
	int partage_custom;
	int partage;
	char intituleService[32];
	double tarif;
	int nombrePlace;
	char date_prelevement[9];
	int idCompte;
	int idService;
};

typedef struct abonnement_abn Abonnement;

struct list_abonnement{
	int nb_abonnement;
	Abonnement abonnements[10];
};

typedef struct list_abonnement ListeAbonnement;

struct information{
	Compte compte;
	ListeCompte listeCompte;
	ListeAbonnement liste_abonnements;
	Abonnement abonnement;
};

typedef struct information Information;



program PARTAGEUR{
	version SPLIIIT_V1{
		bool INIT() = 1;
		Compte inscription(Information) = 2;
		int connexion(Information) = 3;
		ListeService lister_services(void) = 4;
		int desinscription(Information) = 5;
		ListeAbonnement lister_Abonnement(void) = 6;
		Abonnement creer_abonnement(Information) = 7;
		int payer_abonnement(Abonnement) = 8;
	} = 1;
} = 0x23456789;
