import SwiftUI

struct WebsiteSection: View {
    let blog: String?
    let login:String
    
    var body: some View{
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Image(systemName: "link")
                    .foregroundStyle(.blue)
                
                Text("Website")
                    .font(.headline)
                    .fontWeight(.semibold)
                
                Spacer()
            }
            
            Link(destination: URL(string: blog ?? "") ?? URL(string: "https://github.com/\(login)")!) {
                Text(blog ?? "")
                    .font(.subheadline)
                    .foregroundStyle(.blue)
                    .lineLimit(1)
                    .padding(.vertical, 4)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.vertical, 4)
    }
}

