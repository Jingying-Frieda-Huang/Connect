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
    @State private var username = ""
    @State private var password = ""
    
    var body: some View {
        
        NavigationView {
        
            VStack {
                TextField("Username", text: $username)
                    .padding()
                    .background(Color.lightGray)
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                SecureField("Password", text: $password)
                    .padding()
                    .background(Color.lightGray)
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                
                Button(action: {
                    print("logged in!")
                }) {
                    Text("LOG IN")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 350, height: 50)
                        .background(Color.ruddyBlue)
                        .cornerRadius(10.0)
                }
                .disabled(username.isEmpty || password.isEmpty)
                Spacer()
            }
            .navigationTitle("Login")
            .padding()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
