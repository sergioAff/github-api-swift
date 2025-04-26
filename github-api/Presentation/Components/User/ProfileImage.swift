import SwiftUI

struct ProfileImage: View {
    let image: String
    
    var body: some View {
        AsyncImage(url: URL(string: image)) { phase in
            switch phase {
            case .empty:
                ProgressView()
                    .frame(width: 84, height: 84)
            case .success(let image):
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            case .failure:
                Image(systemName: "person.crop.circle.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundStyle(.secondary)
            @unknown default:
                Image(systemName: "person.crop.circle.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundStyle(.secondary)
            }
        }
        .frame(width: 84, height: 84)
        .clipShape(Circle())
        .shadow(color: .black.opacity(0.1), radius: 2, x: 0, y: 1)
    }

}
