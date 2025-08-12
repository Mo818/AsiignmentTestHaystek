# AsiignmentTestHaystek
This is assignment test of HayStek technology



🛒 FakeStore SwiftUI App
A simple SwiftUI app that fetches products from Fake Store API and displays them in a grid.
Users can view product details, add/remove products from a cart, and checkout with a thank-you popup.

📱 Features
SwiftUI Grid View for listing products
AsyncImage for loading product images from the API
MVVM architecture for clean separation of concerns
API integration using URLSession with async/await
Product Detail View with title, description, and large image preview
Cart Functionality with real-time item count badge in toolbar
Add/Remove from Cart using a heart icon
Checkout Flow with a “Thank You” popup
Error Handling for network requests

🛠 Requirements
iOS 15.0+
Xcode 14+
Swift 5.5+

🚀 How to Run
Clone the repository:
Run tbe xcodeproj from the Xcode IDE

🌐 API Reference
We use the Fake Store API:
GET https://fakestoreapi.com/products

💡 Notes & Considerations
The app uses SwiftUI NavigationLink for navigation between list and detail views.
Cart state is stored in the ProductViewModel using @Published properties for live updates.
AsyncImage is used for image rendering to handle async loading and caching.
Network errors are caught and displayed via errorMessage in the ViewModel (can be extended to show alerts).


This project is licensed under the MIT License — you’re free to modify and use it.




