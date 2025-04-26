import SwiftUI

struct ActionButton: View {
    let title: String
    let icon: String
    let action: () -> Void
    let isEnabled: Bool
    
    var body: some View {
        Button(action: action) {
            HStack {
                Image(systemName: icon)
                Text(title)
            }
            .frame(maxWidth: .infinity)
            .padding()
            .background {
                RoundedRectangle(cornerRadius: 10)
                    .fill(isEnabled ? Color.blue : Color.gray)
            }
            .foregroundStyle(.white)
            .shadow(radius: 2, y: 1)
        }
        .disabled(!isEnabled)
        .buttonStyle(.plain)
    }
}
