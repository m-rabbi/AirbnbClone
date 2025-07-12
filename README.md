# AirbnbClone 🏡

This is a SwiftUI-based clone of the Airbnb mobile app, developed as part of my iOS portfolio to showcase modern UI design, architectural best practices, and authentication flow handling using mock services. The project demonstrates my learning progress and ability to structure scalable, maintainable SwiftUI apps with MVVM architecture.

## 📱 Features

- 🔍 Explore listings with image carousels and location maps
- ❤️ Wishlist view with conditional login prompts
- 👤 Profile screen with conditional user states (logged in/out)
- 🔐 Authentication flow (Login / Registration) using mocked services
- 🧠 Clean MVVM architecture
- 🪄 Custom reusable UI components and modifiers
- 🎨 Responsive layout using SwiftUI’s powerful view system
- 🧪 Protocol-oriented `AuthServiceProtocol` abstraction for authentication
- 🗂️ Constructor injection for improved testability and clarity

## 🔧 Tech Stack

- Swift 5.9
- SwiftUI
- MVVM Architecture
- Async/Await
- Mock Services
- Dependency Injection

## 🧪 Authentication

Authentication is **mocked** in this project using `MockAuthService`. No actual backend or Firebase integration is done here — this was implemented fully in my [InstagramClone](https://github.com/m-rabbi/Instagram) project.

- `LoginViewModel` uses constructor injection of `AuthManager` for better testability and separation of concerns.
- `RegistrationViewModel` directly instantiates `AuthManager` for comparison purposes — this is intentional to show different styles of implementation during my learning process.
- `AuthManager` handles session state and uses a protocol-based service (`AuthServiceProtocol`) for flexibility.

> ℹ️ Note: We intentionally **did not** include a real `GoogleService-Info.plist` or live Firebase credentials. This project focuses on structure, flow, and SwiftUI experience over actual backend integration.

## 📂 Architecture

The app follows MVVM with clean separation of:

- **Models** – Represent app data
- **Views** – SwiftUI-based UI components
- **ViewModels** – Business logic and state handling
- **Services** – Protocol-based mock services for authentication

## 🧱 Components & Custom Views

- `PrimaryButtonModifier` and `PrimaryTextFieldModifier` for consistent UI styling
- `CircularProfileImageView` with enum-based sizing (`ProfileImageSize`)
- `UserProfileHeaderView` and `ProfileLoginView` for login-state-based profile screens
- `WishlistLoginView` and `WishlistEmptyStateView` for similar wishlist behavior

## 🧑‍💻 Motivation

This clone was created with the following goals:

- Demonstrate mastery of SwiftUI and modern iOS development
- Showcase understanding of MVVM and dependency injection
- Practice building reusable components and clean UI
- Simulate real-world features (login, conditional views) without backend complexity
- Impress recruiters with readable, well-structured, and testable code

## 🚧 What's Next

- Add support for saved wishlist data using local storage or Firebase (optional)
- Expand listing details and map-based interaction
- Add onboarding flow and real user settings

---

Built with ❤️ by [Md Fazly Rabbi](https://github.com/m-rabbi)

