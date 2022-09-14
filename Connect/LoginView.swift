//
//  LogInView.swift
//  Connect
//
//  Created by Jingying(Frieda) Huang on 2022/9/14.
//

import Foundation
import SwiftUI

extension Color {
    static let lightGray = Color(red: 239/255, green: 243/255, blue: 244/255, opacity: 1.0)
    static let ruddyBlue = Color(red: 118/255, green: 171/255, blue: 223/255)
}

struct LogInView: View {
    @State private var email = ""
    @State private var password = ""

    @EnvironmentObject var authViewModel: AuthenticationViewModel

    var body: some View {
        VStack {
            TextField("Email", text: $email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .disableAutocorrection(true)
                .autocapitalization(.none)

            SecureField("Password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .disableAutocorrection(true)
                .autocapitalization(.none)

            Button(action: {
                guard !email.isEmpty, !password.isEmpty else {
                    return
                }

                authViewModel.signIn(email: email, password: password)
            }) {
                Text("Sign In")
            }
            .withActionButtonStyles()
            .disabled(email.isEmpty || password.isEmpty)
            NavigationLink("Create Account", destination: SignUpView())
                .foregroundColor(Color.green)
                .padding()
        }
        .padding()
    }
}

struct LogInView_Previews: PreviewProvider {
    static var previews: some View {
        LogInView()
    }
}
