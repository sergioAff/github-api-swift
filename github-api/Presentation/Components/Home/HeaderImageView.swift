import SwiftUI

struct HeaderImageView: View {
    var body: some View {
        Image(systemName: "person.3.fill")
            .font(.system(size: 60))
            .foregroundStyle(.blue)
            .padding(.top)
            .accessibilityHidden(true)
    }
}
