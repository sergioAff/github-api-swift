import SwiftUI

struct LocationSection: View {
    let location: String?
    
    var body: some View{
        HStack {
            Image(systemName: "mappin.circle.fill")
                .foregroundStyle(.red)
                .font(.system(size: 18))
            
            Text(location ?? "No location")
                .font(.subheadline)
            
            Spacer()
        }
        .padding(.vertical, 4)
    }
}
