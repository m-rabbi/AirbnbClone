# AirbnbClone 🏡

A modern, SwiftUI-based clone of the Airbnb mobile app showcasing advanced iOS development techniques, clean architecture, and professional UI/UX design. Built with MVVM architecture and protocol-oriented programming principles.

## 📱 Features

### Core Functionality
- **Explore View** - Browse listings with interactive image carousels and location-based search
- **Map Integration** - Interactive map view with custom annotations and listing previews
- **Wishlist System** - Save favorite listings with conditional login prompts
- **User Profile** - Dynamic profile interface with authentication state management
- **Authentication Flow** - Complete login/registration system with mock services

### Technical Highlights
- **MVVM Architecture** - Clean separation of concerns with ViewModels
- **Protocol-Oriented Design** - Flexible authentication with `AuthServiceProtocol`
- **Custom UI Components** - Reusable SwiftUI components and modifiers
- **Responsive Design** - Adaptive layouts for different screen sizes
- **Dependency Injection** - Constructor injection for improved testability

## 🎬 Demo Assets

<div align="center">

**[Explore Demo]**  
![Explore Demo](Assets/Explore.gif)

**[Map View Demo]**  
![Map View Demo](Assets/mapView.gif)

</div>

## 🛠️ Tech Stack

- **Swift 5.9** - Latest Swift language features
- **SwiftUI** - Modern declarative UI framework
- **MapKit** - Native iOS mapping and location services
- **Async/Await** - Modern concurrency patterns
- **MVVM Architecture** - Clean architectural pattern
- **Protocol-Oriented Programming** - Flexible service abstractions

## 📁 Project Structure

```
AirbnbClone/
├── App/
│   └── AirbnbCloneApp.swift          # Main app entry point
├── Core/
│   ├── Authentication/               # Auth system with MVVM
│   │   ├── Manager/
│   │   ├── Service/
│   │   ├── ViewModels/
│   │   └── Views/
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

## 🎨 Assets & Resources

### App Icons & Branding
- **App Icon** - Custom Airbnb-style app icon
- **Accent Colors** - Brand-consistent color scheme

### Property Listings
- **12 High-Quality Listing Images** - Professional property photos (listing-0 through listing-11)
- **Male Profile Photo** - User avatar for profile sections

### Image Specifications
- All listing images are optimized for iOS display
- Universal image support (1x, 2x, 3x scaling)
- PNG format for optimal quality and transparency

## 🔐 Authentication System

The app implements a sophisticated authentication system using mock services:

### Architecture
- **AuthManager** - Central authentication state management
- **AuthServiceProtocol** - Protocol-based service abstraction
- **MockAuthService** - Simulated authentication for development
- **LoginViewModel/RegistrationViewModel** - MVVM pattern implementation

### Features
- Session state management
- Constructor injection for testability
- Conditional UI based on authentication state
- Clean separation between UI and business logic

> **Note**: This project uses mock authentication services. Real Firebase integration is demonstrated in my [InstagramClone](https://github.com/m-rabbi/Instagram) project.

## 🧱 Custom Components

### UI Modifiers
- `PrimaryButtonModifier` - Consistent button styling
- `PrimaryTextFieldModifier` - Standardized text input design

### Reusable Views
- `CircularProfileImageView` - Profile image with enum-based sizing
- `ListingImageCarouselView` - Interactive image galleries
- `ListingMapPreviewView` - Map integration components
- `UserProfileHeaderView` - Dynamic profile headers

### Conditional Views
- `ProfileLoginView` - Authentication-dependent profile UI
- `WishlistLoginView` - Login prompts for wishlist features
- `WishlistEmptyStateView` - Empty state handling

## 🗺️ Map Integration

The app features comprehensive map functionality:

- **Custom Annotations** - Property-specific map markers
- **Interactive Previews** - Tap-to-view listing details
- **Location Services** - Real-time coordinate handling
- **Smooth Animations** - Spring-based transitions

## 🧪 Development Approach

### Learning Objectives
- Master SwiftUI's declarative syntax
- Implement clean MVVM architecture
- Practice protocol-oriented programming
- Build scalable, maintainable code
- Create professional-grade UI/UX

### Code Quality
- Comprehensive error handling
- Memory management best practices
- Performance optimization
- Accessibility considerations
- Clean, readable code structure

## 🚀 Getting Started

1. **Clone the repository**
   ```bash
   git clone https://github.com/m-rabbi/AirbnbClone.git
   ```

2. **Open in Xcode**
   - Open `AirbnbClone.xcodeproj`
   - Select your target device or simulator

3. **Build and Run**
   - Press `Cmd + R` to build and run
   - Explore the different features and interactions

## 📱 Screenshots & Demos

- **Explore View** - Browse listings with search and filters
- **Map View** - Interactive map with custom annotations
- **Profile** - Dynamic user interface with authentication
- **Wishlist** - Save and manage favorite properties

## 🔮 Future Enhancements

- [ ] Real-time data persistence with Core Data
- [ ] Push notifications for new listings
- [ ] Advanced search filters and sorting
- [ ] User reviews and ratings system
- [ ] Booking and reservation functionality
- [ ] Offline mode with local caching

## 🤝 Contributing

This project is part of my iOS development portfolio. While contributions are welcome, the primary goal is to demonstrate professional iOS development skills and architectural understanding.

## 📄 License

This project is for educational and portfolio purposes. All assets and design inspiration are credited to Airbnb's original design.

---

**Built with ❤️ by [Md Fazly Rabbi](https://github.com/m-rabbi)**

*Showcasing modern iOS development with SwiftUI and clean architecture*

