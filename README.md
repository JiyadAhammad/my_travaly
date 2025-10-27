# My Travaly

A Flutter-based mobile app developed as part of a technical assessment for MyTravaly.  

## Features

- Google signin
- Hotel listing
- Search by hotel name, city, state, or country.
- Pagination

## Tech Stack

- Flutter 3.35.6
- Dart 3.9.2

## Getting Started

### Installation

1. Clone the repository
```bash
git clone https://github.com/JiyadAhammad/my_travaly
cd my_travaly
code . # if Use VsCode
```

### Dependency

2. Add dependencies
```bash
dio # A powerful HTTP networking package for Dart/Flutter, supports Global configuration, Interceptors, FormData, Request cancellation, File uploading/downloading, Timeout, Custom adapters, Transformers, etc.
flutter_bloc # Flutter widgets that make it easy to implement the BLoC (Business Logic Component) design pattern.
get_it # This is a simple Service Locator for Dart and Flutter projects 
fp_dart # Functional programming in Dart and Flutter
```

3. Run the app
```bash
flutter run 
```

## Project Structure

```bash
lib/ 
  ├── features/
  |     ├── feature_Name/
  |     |     
  |     |     ├── presentation/ # Contains UI code and state managements
  |     |     |      ├── page.dart # Main UI screen for this feature
  |     |     |      ├── widgets/ # Reusable widgets specific to this feature
  |     |     |          └── widget.dart 
  |     |     |      └── Bloc/ # State management (Bloc, Cubit etc.)
  |     |     |          ├── Bloc.dart
  |     |     |          ├── event.dart 
  |     |     |          └── state.dart
  |     |     |             
  |     |     ├── domain/
  |     |     |      ├── entities/
  |     |     |          └── entity.dart # Core business entities used across layers
  |     |     |      ├── repository/ 
  |     |     |          └── abstract_repository.dart # Abstract repository interface (contract) 
  |     |     |      └── usecase/ 
  |     |     |          └── usecase.dart # Business logic connecting presentation with domain layer
  |     |     |      
  |     |     └── data/ 
  |     |            ├── data_sources/
  |     |                ├── remote_data_source.dart # Handles API, Firestore calls
  |     |                └── local_data_source.dart # Handles local DB operations (Hive, SQLite, etc.)
  |     |            ├── model/
  |     |                └── feature_model.dart # Data models for serialization/deserialization
  |     |            └── repository/ 
  |     |                └── repository_implementation.dart # Implements abstract repository from domain layer        
  |     └── ...
  ├── Core/
  |     ├── enums/  # Enums used across the app 
  |     |     ├── enums.dart
  |     |     └── ...
  |     ├── error/   # Common app exceptions and failures
  |     |     ├── exception.dart
  |     |     ├── failures.dart
  |     |     └── ...
  |     ├── extension/  # Extension methods for core types
  |     |     ├── string_extension.dart
  |     |     ├── date_extension.dart
  |     |     └── ...
  |     ├── secrets/  # API keys and app secret
  |     |     ├── app_secrets.dart
  |     |     ├── external_api_keys.dart
  |     |     └── ...
  |     ├── theme/  # App theme and color definitions
  |     |     ├── colors.dart
  |     |     ├── theme.dart
  |     |     └── ...
  |     ├── usecase/  # Base use case structure (e.g., UseCase<T, Params>)
  |     |     ├── usecase.dart
  |     |     └── ...
  |     ├── utils/    # Common utilities and helpers
  |     |     ├── show_snackbar.dart
  |     |     └── ...
  |     ├── widgets/  # Reusable widgets shared across the app
  |     |     ├── loader.dart
  |     |     ├── primary_button.dart
  |     |     └── ...
  |     └── ...  
  ├── init_dependencies.dart    # Dependency injection setup (GetIt)
  ├── app.dart    # Application entry point
  └── main.dart   # Flutter app entry point
```