# AirbnbClone 🏠

A modern, SwiftUI-based clone of the Airbnb mobile app showcasing advanced iOS development techniques, clean architecture, and professional UI/UX design. Built with MVVM architecture and protocol-oriented programming principles.

## ✨ Features

- **🏠 Explore View** - Browse listings with interactive image carousels and location-based search
- **🗺️ Map Integration** - Interactive map view with custom annotations and listing previews
- **💖 Wishlist System** - Save favorite listings with conditional login prompts
- **👤 User Profile** - Dynamic profile interface with authentication state management
- **🔐 Authentication Flow** - Complete login/registration system with mock services

## 🎥 Demo

<div align="center">

### Explore Demo
![Explore Demo](Assets/Explore.gif)

### Map View Demo
![Map View Demo](Assets/mapView.gif)

</div>

## 🛠️ Tech Stack

- **⚡ Swift 5.9** - Latest Swift language features
- **🎨 SwiftUI** - Modern declarative UI framework
- **🗺️ MapKit** - Native iOS mapping and location services
- **🏗️ MVVM Architecture** - Clean architectural pattern
- **📋 Protocol-Oriented Programming** - Flexible service abstractions

## 📂 Project Structure

```
AirbnbClone/
├── App/
│   └── AirbnbCloneApp.swift          # Main app entry point
├── Core/
│   ├── Authentication/               # Auth system with MVVM
│   ├── Components/                   # Reusable UI components
│   ├── Explore/                      # Search and discovery
│   ├── Listings/                     # Property listings
│   ├── MapView/                      # Map functionality
│   ├── Profile/                      # User profile management
│   ├── TabBar/                       # Main navigation
│   └── Wishlists/                    # Saved favorites
├── Extensions/                       # Swift extensions
├── Models/                           # Data models
└── Utils/                           # Custom modifiers
```

## 🔐 Authentication System

The app implements a sophisticated authentication system using mock services:

- **🔑 AuthManager** - Central authentication state management
- **📄 AuthServiceProtocol** - Protocol-based service abstraction
- **🧪 MockAuthService** - Simulated authentication for development
- **📱 LoginViewModel/RegistrationViewModel** - MVVM pattern implementation

> **💡 Note**: This project uses mock authentication services. Real Firebase integration is demonstrated in my [InstagramClone](https://github.com/m-rabbi/Instagram) project.

## 🧩 Custom Components

### 🎨 UI Modifiers
- `PrimaryButtonModifier` - Consistent button styling
- `PrimaryTextFieldModifier` - Standardized text input design

### 🔄 Reusable Views
- `CircularProfileImageView` - Profile image with enum-based sizing
- `ListingImageCarouselView` - Interactive image galleries
- `ListingMapPreviewView` - Map integration components
- `UserProfileHeaderView` - Dynamic profile headers

## 🚀 Getting Started

1. **📥 Clone the repository**
   ```bash
   git clone https://github.com/m-rabbi/AirbnbClone.git
   ```

2. **📱 Open in Xcode**
   - Open `AirbnbClone.xcodeproj`
   - Select your target device or simulator

3. **▶️ Build and Run**
   - Press `Cmd + R` to build and run
   - Explore the different features and interactions

## 🔮 Future Enhancements

- [ ] 📊 Real-time data persistence with Core Data
- [ ] 🔔 Push notifications for new listings
- [ ] 🔍 Advanced search filters and sorting
- [ ] ⭐ User reviews and ratings system
- [ ] 📅 Booking and reservation functionality
- [ ] 📱 Offline mode with local caching

## 📄 License

This project is for educational and portfolio purposes. All assets and design inspiration are credited to Airbnb's original design.

---

**Built with ❤️ by [Md Fazly Rabbi](https://github.com/m-rabbi)**

