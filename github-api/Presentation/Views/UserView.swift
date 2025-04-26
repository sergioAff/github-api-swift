import SwiftUI

struct UserView: View {
    let user: User
    @State private var isAnimating = false
    
    var body: some View {
        ScrollView {
            VStack(spacing: 24) {
                ProfileHeader(user: user)
                Divider()
                    .padding(.horizontal)
                
                StatsSection(user: user)
                
                Divider()
                    .padding(.horizontal)
                
                LocationSection(location: user.location)
                
                BioSection(bio: user.bio)
                
                    WebsiteSection(blog: user.blog)
                
                
                ContactButton()
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
