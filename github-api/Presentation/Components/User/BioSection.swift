import SwiftUI

struct BioSection: View {
    let bio: String?
    var body: some View{
        VStack(alignment: .leading, spacing: 8) {
            Text("Bio")
                .font(.headline)
                .fontWeight(.semibold)
            
            Text(bio ?? "No bio available")
                .font(.body)
                .foregroundStyle(.secondary)
                .padding(.vertical, 8)
                .fixedSize(horizontal: false, vertical: true)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.vertical, 4)
    }
}
