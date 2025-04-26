import SwiftUI

struct ProfileHeader: View {
    let user: User
    var body: some View{
        HStack(alignment: .center, spacing: 16) {
            ProfileImage(image: user.avatarUrl)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(user.name ?? "")
                    .font(.title2)
                    .fontWeight(.bold)
                    .lineLimit(1)
                
                Text("@\(user.login)")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }
            
            Spacer()
        }
    }
}
