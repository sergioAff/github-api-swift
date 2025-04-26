import SwiftUI

struct StatsSection: View {
    let user : User
    var body: some View {
        HStack(spacing: 0) {
            StatItem(title: "Repos", value: "\(user.publicRepos)", icon: "folder.fill")
            
            Divider()
                .frame(height: 32)
            
            StatItem(title: "Followers", value: "\(user.followers)", icon: "person.2.fill")
            
            Divider()
                .frame(height: 32)
            
            StatItem(title: "Following", value: "\(user.following)", icon: "person.badge.plus")
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 8)
        .background(
            RoundedRectangle(cornerRadius: 12)
                .fill(Color(UIColor.secondarySystemBackground))
        )
    }

}
