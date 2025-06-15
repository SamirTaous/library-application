# BiblioGest – WPF Application

Une application moderne de gestion de bibliothèque développée avec **WPF (Windows Presentation Foundation)**, permettant de gérer les livres, les auteurs, les utilisateurs, les types de livres et les éditeurs dans un environnement visuel professionnel. Elle s'appuie sur **Microsoft SQL Server** pour la gestion des données et respecte l'architecture **MVVM**.

---

##  Fonctionnalités principales

### Authentification
- Connexion sécurisée via nom d’utilisateur et mot de passe hashé (SHA-512).
- Deux types d’accès possibles : administrateur et utilisateur simple (selon l’implémentation future).

---

### Gestion des livres (`ManageBooks.xaml`)
- Affichage de la liste des livres avec pagination et tri.
- Recherche par titre.
- Ajout, modification et suppression de livres.
- Activation/Désactivation d’un livre.

---

### Création de livres (`CreateBook.xaml`)
- Formulaire complet pour :
  - Titre du livre
  - Date de publication
  - Stock disponible
  - Type de livre (dropdown)
  - Éditeur (dropdown)
  - Auteurs associés (ajout/suppression depuis des listes)
- Validation de la présence du titre dans la base.
- Interface moderne avec effets de survol et design responsive.

---

### Gestion des utilisateurs (`ManageUsers.xaml`)
- Liste des utilisateurs inscrits.
- Activation/Désactivation d’un utilisateur.
- Recherche par nom.
- Affichage des informations de contact (email, téléphone).

---

### Emprunts de livres (`BorrowedBooks.xaml`, `ManageBookBorrows.xaml`)
- Emprunter un livre à une date précise.
- Visualisation de tous les livres empruntés avec :
  - Nom de l'utilisateur
  - Email
  - Livre emprunté
  - Date de retour
- Gestion de l’état "Actif" ou "Retourné" via une procédure stockée.

---

### Gestion des auteurs (`ManageAuthors.xaml`, `CreateAuthor.xaml`)
- Liste des auteurs avec leur date de naissance.
- Ajout d’un nouvel auteur via un formulaire stylisé.
- Modification et suppression.
- Activation/Désactivation.

---

### Types de livres (`ManageBookTypes.xaml`, `CreateBookType.xaml`)
- Ajout de nouveaux types (fiction, non-fiction, etc.).
- Activation/Désactivation.
- Edition.

---

### Éditeurs (`ManagePublishers.xaml`, `CreatePublisher.xaml`)
- Création et gestion des maisons d’édition.
- Activation/Désactivation.

---

### Recherche multicritères dans le catalogue 
- par titre
- par éditeur
- par année
- par type

---

## Architecture technique

### Langages & Frameworks :
- **C# (.NET 6 ou supérieur)**
- **WPF (MVVM)**
- **XAML pour l'interface utilisateur**

### Base de données :
- **Microsoft SQL Server 2019 Express**
- Connexion via `SqlConnection` + `Stored Procedures` (`createUserBook`, `setBorrowActiveStatus`, etc.)
- Tables principales : `Book`, `User`, `Author`, `Publisher`, `UserBook`, `BookType`, `AuthorBook`

---

## Sécurité

- Les mots de passe sont **hashés en SHA-512** avant insertion en base.
- La base utilise l’authentification SQL Server avec un compte `library` sécurisé.

---

## UI/UX

- Interface moderne avec :
  - Palette claire et élégante (#FAFBFC, #3182CE, etc.)
  - Effets de `DropShadow` et `CornerRadius`
  - Composants stylisés (TextBox, ComboBox, ListBox, Buttons…)
- Design unifié sur toutes les vues : All Books, Manage, Create, etc.

---

## Tests & Fiabilité

- Vérification des champs obligatoires avant insertion.
- Gestion des erreurs SQL avec try/catch + affichage utilisateur.
- Conformité des formats de dates (`dd/MM/yyyy`) pour éviter les exceptions `FormatException`.

---

## Installation

### Prérequis

- **Windows**
    
- **.NET Framework 4.7.2 ou plus récent**
    
- **Visual Studio 2019 ou 2022**
    
- **Microsoft SQL Server** (Express ou supérieur)
    
- **SQL Server Management Studio (SSMS)** (optionnel pour gérer la base de données)
    

---

### Étapes de configuration

1. **Cloner le dépôt Git**
    
    ```bash
    git clone https://github.com/SamirTaous/library-application.git
    cd library-application
    ```
    
2. **Ouvrir le projet dans Visual Studio**
    
    Ouvrez le fichier `Library_Application.sln` dans Visual Studio.
    
3. **Configurer la base de données**
    
    Dans `App.config`, mettez à jour la chaîne de connexion :
    
    ```xml
    <connectionStrings>
        <add name="SQLConnStr" connectionString="Server=VOTRE_NOM_SERVEUR;Database=dbBook;User ID=library;Password=motdepasse;TrustServerCertificate=true;"/>
    </connectionStrings>
    ```
    
    Remplacez :
    
    - `VOTRE_NOM_SERVEUR` par quelque chose comme `DESKTOP-XXXX\SQLEXPRESS`
        
    - `library` et `motdepasse` par les identifiants de votre utilisateur SQL Server
        
4. **Importer la structure de la base de données**
    
    Dans SSMS, exécutez le script SQL fourni pour :
    
    - Créer la base `dbBook`
        
    - Ajouter des utilisateurs (avec mots de passe hachés), livres, auteurs, types de livres, etc.
        
5. **Ajouter un utilisateur admin avec AccessLevel>1 pour avoir accès à la partie administration**
6. **Lancer l’application**
    
    - Cliquez sur **Build > Build Solution** dans Visual Studio
        
    - Appuyez sur **F5** ou cliquez sur **Start** pour exécuter l'application
        

---

## Conclusion

Cette application offre une solution complète et professionnelle pour gérer une bibliothèque numérique. Elle est modulable, extensible et peut être adaptée facilement pour un usage scolaire, universitaire ou professionnel. Le design moderne garantit une bonne expérience utilisateur tandis que l’architecture robuste assure fiabilité et évolutivité.

---

