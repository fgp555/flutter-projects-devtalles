# roadmap-flutter.md

# Roadmap Flutter Senior

Objetivo: alcanzar el nivel requerido para una posición de Flutter Senior trabajando con aplicaciones reales, arquitectura escalable, testing y CI/CD.

---

# Fase 1 - Dart Avanzado

## Temas

- Null Safety
- Futures
- Streams
- Async/Await
- Generics
- Extensions
- Mixins
- Sealed Classes
- Pattern Matching
- Records
- Isolates
- Exceptions
- Custom Exceptions
- assert
- Const constructors

## Proyecto

CRUD usando JSONPlaceholder.

---

# Fase 2 - Flutter UI

## Temas

- StatelessWidget
- StatefulWidget
- Layouts
- Column
- Row
- Stack
- ListView
- GridView
- Slivers
- CustomPainter
- Themes
- Material 3
- Responsive Design
- Adaptive Design
- go_router

## Proyecto

Clon de Spotify o Airbnb.

---

# Fase 3 - Arquitectura

## Clean Architecture

```txt
presentation/
domain/
data/
```

## Domain

- Entities
- Repository Interfaces
- Use Cases

## Data

- DTO
- Models
- Datasources
- Repository Implementations

## Presentation

- State Management
- Screens
- Widgets

## Estructura

```txt
lib/

core/
shared/

features/

auth/
products/
cart/

presentation/
domain/
data/
```

## Proyecto

E-commerce.

---

# Fase 4 - State Management

## Riverpod

- Provider
- FutureProvider
- StreamProvider
- StateNotifier
- AsyncNotifier

## Bloc

- Cubit
- Bloc
- Events
- States
- BlocObserver

## Proyecto

Aplicación bancaria.

---

# Fase 5 - Networking

## Dio

- GET
- POST
- PUT
- PATCH
- DELETE
- Interceptors
- Retry
- Timeout
- CancelToken

## REST APIs

- Headers
- Query Params
- Body
- Pagination

## JWT

- Login
- Refresh Token
- Secure Storage

## Manejo de errores

```dart
Failure
ServerFailure
CacheFailure
UnauthorizedFailure
```

## Proyecto

Sistema de autenticación completo.

---

# Fase 6 - Persistencia

## SharedPreferences

- Configuración

## Hive

- Caché

## SQLite

- Base de datos local

## Isar

- Offline First

## Proyecto

Task App sincronizable.

---

# Fase 7 - Testing

## Unit Test

- test
- mocktail

## Widget Test

```dart
testWidgets()
```

## Integration Test

- integration_test

## Conceptos

- Mocks
- Fakes
- Given
- When
- Then
- Coverage

## Objetivo

80%+ de cobertura.

---

# Fase 8 - Git Profesional

## Flujo

```txt
main
develop
feature/*
bugfix/*
```

## Temas

- Pull Request
- Code Review
- Rebase
- Squash
- Cherry Pick
- Merge Conflicts

---

# Fase 9 - Android Nativo

## Gradle

```txt
dev
staging
prod
```

## Temas

- Flavors
- AndroidManifest
- Deep Links
- Signing
- Build Types

## Firebase por ambiente

- dev
- staging
- prod

---

# Fase 10 - iOS

## Temas

- Xcode
- CocoaPods
- Build Configurations
- Provisioning Profiles
- Certificates

---

# Fase 11 - Firebase

## Authentication

- Email/Password
- Google Sign-In

## Firestore

- Collections
- Documents

## Storage

## Analytics

## Crashlytics

## Remote Config

## Messaging

## Proyecto

Chat App.

---

# Fase 12 - Push Notifications

## Firebase Messaging

## OneSignal

## Braze

## Emarsys

## Conceptos

- Push Notifications
- In-App Messages
- Deep Links

---

# Fase 13 - Analytics

## Firebase Analytics

## AppsFlyer

## Adjust

## Eventos

```dart
view_product
add_to_cart
purchase
login
```

---

# Fase 14 - CI/CD

## GitHub Actions

```yaml
flutter analyze

flutter test

flutter build apk

flutter build appbundle
```

## Fastlane

Automatizar:

- Play Store
- App Store

## Codemagic

## Bitrise

---

# Fase 15 - Calidad

## SOLID

- Single Responsibility
- Open Closed
- Liskov
- Interface Segregation
- Dependency Inversion

## Principios

- DRY
- KISS
- YAGNI

## Herramientas

- very_good_analysis
- dart_code_metrics
- melos

## Code Reviews

---

# Fase 16 - IA para Desarrolladores

## Herramientas

- ChatGPT
- Claude Code
- GitHub Copilot
- Gemini

## Aplicaciones

- Generación de código
- Refactorización
- Tests
- Documentación
- Automatización
- Creación de prompts

---

# Fase 17 - Inglés Técnico

## Speaking

- Reuniones
- Explicar arquitectura

## Reading

- Documentación

## Writing

- Pull Requests
- Tickets
- Code Reviews

---

# Proyectos del Portafolio

## Proyecto 1

### E-commerce

Tecnologías:

- Flutter
- Riverpod
- Clean Architecture
- Dio
- JWT
- Firebase
- Tests

---

## Proyecto 2

### Banking App

Tecnologías:

- Bloc
- Secure Storage
- Offline First
- Analytics

---

## Proyecto 3

### Chat App

Tecnologías:

- Firebase
- Push Notifications
- Deep Links

---

## Proyecto 4

### Expense Tracker

Tecnologías:

- Isar
- Sync
- Unit Tests

---

## Proyecto 5

### Producción

Publicar en:

- Google Play
- App Store

---

# Orden recomendado

1. Dart avanzado
2. Flutter UI
3. Riverpod
4. Clean Architecture
5. Dio + JWT
6. Persistencia
7. Testing
8. Git Profesional
9. Android Nativo
10. iOS
11. Firebase
12. Push Notifications
13. Analytics
14. CI/CD
15. Calidad
16. IA aplicada al desarrollo
17. Inglés técnico

---

# Nivel esperado

## Mid Level

- Flutter
- APIs
- Riverpod
- Firebase

## Senior

- Arquitectura
- Testing
- CI/CD
- Android nativo
- iOS
- Code Reviews
- Inglés avanzado
- Liderazgo técnico
