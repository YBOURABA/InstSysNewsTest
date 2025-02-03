# News App - Technical Test

## Introduction

Ce fichier explique les choix que j'ai faits pour l'application que j'ai développée dans le cadre du test technique.

## 📌 Choix techniques

## 🏗️ Architecture

L'application suit une approche Clean Architecture, divisée en trois couches principales :

- Presentation Layer : Gestion de l'interface utilisateur et des interactions.

- Domain Layer : Contient model de domaine et les interfaces des repositories.

- Data Layer : Gère l'accès aux données via NewsAPI.

## 📦 Design Patterns

- Repository Pattern : Permet d'abstraire l'accès aux données et de faciliter les tests.

- DTO (Data Transfer Objects) : Transforme les données issues de l'API en modèles exploitables.

- Coordinator Pattern : Gère la navigation de manière modulaire et scalable.

- Design System : Toutes les valeurs de padding, corner radius, spacing, aspect ratio, etc., sont centralisées pour assurer une cohérence visuelle.

## 🔀 Navigation

J'ai opté pour UIKit avec un Coordinator Pattern, au lieu de NavigationStack de SwiftUI. Bien que NavigationStack soit plus simple pour ce projet, j'ai voulu démontrer une approche plus modulaire et maintenable pour gérer la navigation dans des applications complexes.

## 🌍 API et Langue

J'ai utilisé l'endpoint Everything au lieu de Top Headlines, car ce dernier ne prend pas en charge la langue française. Toutes les chaînes de caractères sont hardcodées en français, car aucune localisation n'a été mise en place.

## ⏳ Temps consacré

J'ai réservé environ 3 heures pour la réalisation de ce projet.

## 🚀 Technologies utilisées

- Swift

- SwiftUI (pour les vues)

- UIKit (pour la navigation via le Coordinator Pattern)

- URLSession (appel réseau)

- Async/Await (gestion asynchrone moderne)

## 📌 Points d'amélioration

- Gestion des erreurs : Actuellement, la gestion des erreurs est basique et pourrait être affinée.

- Pagination : Non implémentée mais envisageable pour améliorer l'expérience utilisateur.
