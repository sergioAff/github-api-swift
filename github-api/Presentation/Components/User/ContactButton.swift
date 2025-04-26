import SwiftUI

struct ContactButton:View {
    var body: some View {
        Text("Contact")
            .fontWeight(.semibold)
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.blue)
            .foregroundStyle(.white)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .shadow(color: .black.opacity(0.1), radius: 2, y: 1)
            .padding(.top, 12)
    }

    }

extension ContactButton{
    func onPress(){
        
    }
}
