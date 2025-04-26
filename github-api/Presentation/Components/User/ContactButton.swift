import SwiftUI

struct ContactButton:View {
    let email: String?
    let profileURL: URL
    @Environment(\.openURL) var openURL
    
    var body: some View {
        Button(action: contact){
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
    }

extension ContactButton{
    func contact(){
        if let email = email, let mailURL = URL(string: "mailto:\(email)") {
            UIApplication.shared.open(mailURL)
        }
        else {
            openURL(profileURL)
        }
    }
}
