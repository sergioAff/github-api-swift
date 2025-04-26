GitHub API Swift App

A simple SwiftUI application that allows you to search for GitHub users and view basic profile information.
This project demonstrates the use of SwiftUI, Swift Concurrency (async/await), network requests, and clean UI components.

Features
	•	🔍 Search GitHub users by username
	•	👤 Display user profile information:
	•	Username
	•	Full Name
	•	Bio
	•	Avatar
	•	Blog URL
	•	Location
	•	Public Repositories
	•	Followers and Following count
	•	📡 Asynchronous API requests with error handling
	•	🎨 Clean and responsive SwiftUI interface

Technologies
	•	Swift 5.9
	•	SwiftUI
	•	URLSession + async/await
	•	MVVM architecture principles (lightweight)

Screenshots
![IMG_4762](https://github.com/user-attachments/assets/7bf35a9e-5930-4f81-a75d-99776c1dde6f)

Search	Profile
	![IMG_4761](https://github.com/user-attachments/assets/44923711-afa0-4c6e-b684-c5138ff08e89)


Setup
	1.	Clone the repository:

git clone https://github.com/sergioAff/github-api-swift.git


	2.	Open the project with Xcode:

open github-api-swift.xcodeproj


	3.	Run the app on an iOS Simulator or a real device.

Requirements
	•	Xcode 15 or later
	•	iOS 17 or later
	•	Swift 5.9+

Project Structure
	•	Models: User.swift
	•	Services: UserService.swift
	•	Views: HomeView, UserView, SearchComponent
	•	Utilities: Networking error handling

Improvements for the Future
	•	Support for pagination of followers/following
	•	Display user repositories
	•	Better error handling with custom views
	•	Light/Dark mode support improvements

License

This project is licensed under the MIT License.
