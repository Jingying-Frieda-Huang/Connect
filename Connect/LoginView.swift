//
//  LoginView.swift
//  Connect
//
//  Created by Jingying(Frieda) Huang on 2022/9/9.
//

import SwiftUI

extension Color {
    static let lightGray = Color(red: 239/255, green: 243/255, blue: 244/255, opacity: 1.0)
    static let ruddyBlue = Color(red: 118/255, green: 171/255, blue: 223/255)
}

    
struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        
        NavigationView {
            VStack {
                TextField("Email", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())

                SecureField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button(action: {
                    print("logged in!")
                }) {
                    Text("LOG IN")
                }
                .withActionButtonStyles()
                .disabled(email.isEmpty || password.isEmpty)
                Spacer()
            }
            .navigationTitle("Login")
            .padding()
            .toolbar {
                Button("Sign Up") {
                    // TODO: connect to Sign Up Page
                }
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
