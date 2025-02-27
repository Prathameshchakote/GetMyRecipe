# GetMyRecipe iOS Recipe App

A Swift-based iOS application that displays recipes from a remote API, built using SwiftUI and following modern iOS development practices.

### Summary

The app provides a seamless experience for browsing and viewing recipes with the following features:

* **Recipe List**: Display recipes with thumbnail images, names, cuisine types and links to youtube and source
* **Search Functionality**: Real-time search across recipe names and cuisines
* **Pull-to-Refresh**: Easy content updates with gesture support
* **Detail View**: Comprehensive recipe information including:
  - High-resolution photo
  - YouTube video preview
  - Direct links to recipe source
* **Image Caching**: Efficient image loading and caching system
* **Error Handling**: Graceful error states and retry mechanisms
* **Empty States**: Clear feedback when no recipes are available


## Previews

> <img src="https://github.com/user-attachments/assets/2f01595b-1a18-46ee-b906-6c64e2d7a07f" width="150"> <img src="https://github.com/user-attachments/assets/552fb963-85f0-4c9a-8b27-deba4cebe037" width="150">
> <img src="https://github.com/user-attachments/assets/53e8cebf-fd5f-44d1-a488-74cd5f8c97ca" width="150">

> [Demo](https://github.com/user-attachments/assets/4ad7f4cd-1acf-4942-a5f2-d649c2ee676d)

### Focus Areas

1. **Architecture and Code Organization**
   - MVVM architecture for clear separation of concerns
   - Actor-based concurrency for thread safety
   - Modular components for better maintainability

2. **Performance**
   - Custom image caching system to minimize network requests
   - Efficient search implementation with real-time updates
   - Lazy loading of images in lists

3. **User Experience**
   - Smooth animations and transitions
   - Intuitive search interface
   - Comprehensive error handling
   - Responsive UI with loading states

### Time Spent

Total time: Approximately 6-8 hours

Breakdown:
- Initial Setup and Basic Implementation: 2 hours
- Image Caching and Network Layer: 1.5 hours
- UI/UX Implementation: 2 hours
- Testing and Refinement: 1.5 hours

### Trade-offs and Decisions

1. **Actor vs Class**
   - Chose to use actors for NetworkService and ImageCache for thread safety
   - Trade-off: Slight performance overhead but better safety guarantees

2. **Custom Image Caching**
   - Built custom solution instead of using URLCache
   - Trade-off: More code to maintain but better control over caching behavior

3. **SwiftUI Navigation**
   - Used NavigationView instead of NavigationStack
   - Trade-off: Better backward compatibility but missing newer navigation features

4. **YouTube Preview**
   - Used thumbnail images instead of embedded player
   - Trade-off: Better performance and simpler implementation vs. richer preview experience

### Weakest Part of the Project

1. **Testing Coverage**
   - Focusing mainly on network, caching and viewModel
   - Missing UI tests and integration tests
   - Could benefit from more comprehensive test coverage

2. **Error Handling**
   - Basic error messages could be more descriptive

### Additional Information

1. **Future Improvements**
   - Add sorting options
   - Implement favoriting functionality
   - Add offline support
   - Enhanced YouTube integration

2. **Technical Constraints**
   - Minimum iOS target version: iOS 15.0
   - Swift 5.5+ required for async/await support
   - No external dependencies used as per requirements

3. **Design Decisions**
   - Used SF Symbols for consistent iconography
   - Followed Apple's Human Interface Guidelines
   - Implemented native-feeling interactions and animations

### Setup Instructions

1. Clone the repository
2. Open RecipeApp.xcodeproj in Xcode
3. Select your target device/simulator
4. Build and run (⌘ + R)

### Requirements

- Xcode 14.0+
- iOS 15.0+
- Swift 5.5+

### Project Structure

```
RecipeApp/
├── Models/
│   └── Recipe.swift
│   └── RecipeResponse.swift
├── Views/
│   ├── AsyncImageView.swift
│   ├── CardGroupBoxStyle.swift
│   ├── RecipeCardView.swift
│   ├── RecipeDetailView.swift
│   ├── RecipeListView.swift
│   └── YouTubePreviewView.swift
├── ViewModels/
│   └── RecipeListViewModel.swift
├── Services/
│   ├── NetworkService.swift
│   └── NetworkError.swift
│   └── NetworkServiceProtocol.swift
├── Utilities/
│   └── ImageCache.swift
```
