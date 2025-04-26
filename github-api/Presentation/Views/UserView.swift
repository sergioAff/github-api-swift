import SwiftUI

struct UserView: View {
    let user: User
    @State private var isAnimating = false
    
    var body: some View {
        ScrollView {
            VStack(spacing: 24) {
                ProfileHeader(user: user)
                
                StatsSection(user: user).padding(.horizontal,10)
                
                LocationSection(location: user.location)
                
                BioSection(bio: user.bio)
                
                WebsiteSection(blog: user.blog, login: user.login)
                
                
                ContactButton(email: user.email, profileURL: URL(string: "https://github.com/\(user.login)")!)
            }
            .padding()
            .animation(.spring(response: 0.5, dampingFraction: 0.8), value: isAnimating)
            .onAppear {
                isAnimating = true
            }
        }
        .navigationTitle("Profile")
        .navigationBarTitleDisplayMode(.inline)
    }
}
