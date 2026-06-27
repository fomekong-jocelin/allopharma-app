# AllôPharma App

Application mobile pour la marketplace de mise en relation Patient ↔ Pharmacie au Cameroun.

## Fonctionnalités

### Côté Patient
- **Signalement rapide** : Formulaire pour déclarer un besoin en médicament (nom, ville, quartier, urgence).
- **Suivi des signalements** : Liste des demandes en cours et archivées.
- **Notifications de disponibilité** : Réception de réponses des pharmacies.
- **Carte des pharmacies** : Visualisation sur une carte des pharmacies ayant le médicament en stock.

### Côté Pharmacien
- **Fil de signalements** : Liste des demandes des patients dans la zone géographique de la pharmacie.
- **Réponse rapide** : Bouton "Disponible" pour informer le patient en un clic.
- **Gestion de quotas** : Limitation des signalements visibles selon le plan (Free, Standard, Premium).

## Architecture Technique

L'application est développée avec Flutter et suit une architecture modulaire :
- **State Management** : Riverpod (Hooks Riverpod)
- **Navigation** : GoRouter
- **Modèles** : Freezed & JSON Serializable
- **Mock Backend** : Une simulation en mémoire des services backend pour la démonstration du MVP.

## Installation

1. S'assurer d'avoir Flutter installé (`flutter doctor`).
2. Cloner le repository.
3. Installer les dépendances :
   ```bash
   flutter pub get
   ```
4. Générer les fichiers (Freezed, JSON) :
   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs
   ```

## Exécution

Pour lancer l'application en mode debug :
```bash
flutter run
```

## Tests

Pour lancer les tests unitaires et de widgets :
```bash
flutter test
```
