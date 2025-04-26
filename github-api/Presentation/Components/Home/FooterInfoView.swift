import SwiftUI

struct FooterInfoView: View {
    var body: some View {
        Text("Search for GitHub users to view their profiles and repositories.")
            .font(.caption)
            .foregroundStyle(.secondary)
            .multilineTextAlignment(.center)
            .padding(.horizontal)
            .padding(.bottom)
    }
}
