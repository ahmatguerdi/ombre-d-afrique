# c'est une base de données du restaurant Ombre d'Afrique où on a eu l'honneur de la concevoir, en plus elle comporte plusieurs tables, les voici:

1. client    
  La table client est une table très importante auquel sont stockées les informations nécessaires du client parmi on a :Id_client, nom, prénom, Téléphone et adresse.

2. commande   
  La table commande quant à elle contient les informations sur les commanndes effectuées par les clients : Numéro_Commande, Type, #Id_Client, #Id_Employé, #Numéro_Table, montant, date.

3. composer      
  Elle est une entité qui a eu lieu à partir d'une relation entre plusieurs à plusieurs (ingredient et plat) parmi ses attributs : #Code_Plat, #Id_Ingrédient.

4. contenir        
  Elle aussi a eu lieu à partir d'une relation entre plusieurs à plusieurs (commande et plat), ses attributs : #Code_Plat, #Numéro_Commande.

5. employé        
  Elle représente l'entité où on gère les informations des employés du restaurant, elle a pour attributs : Id_Employé, Nom, Prénom, Téléphone, Adresse, Poste, Salaire, Date_Embauche.

6. fournisseur      
  C'est la table qui regroupe les informations de nos fournisseurs nécessaires avec leurs spécialités comme : Id_Fournisseur, Nom, Contact, Spécialité, Condition_Paiement. 

7. ingredient      
  C'est le stockage ou l'alimentation du restaurant, elle a aussi quelques attributs qui sont : Id_Ingrédient, Nom, Description, Quantité, Prix, #Id_Fournisseur

8. plat      
  Ici on gère les informations de nos plats disponibles au restaurant, ses attributs on a: Code_Plat, Nom, Description, Prix, Catégorie, Temps_Préparation, Liste_Ingrédient.

9. reserver      
  Elle est une entité née à partir d'une relation de plusieurs à plusieurs (client et tables), d'où ses attributs ne peuvent être qui les clés primaires de ces dernières : #Numéro_Table, #Id_Client, Date

10. tables      
  Elle stocke les informations sur les tables, ses attributs entre autres : Numéro_Table, Capacité, Zone_Emplacement, État.
