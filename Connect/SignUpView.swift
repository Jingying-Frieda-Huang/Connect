//
//  SignUpView.swift
//  Connect
//
//  Created by Jingying(Frieda) Huang on 2022/9/9.
//

import SwiftUI

struct SignUpView: View {
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

                authViewModel.signUp(email: email, password: password)
            }) {
                Text("Create Account")
            }
            .withActionButtonStyles()
            .disabled(email.isEmpty || password.isEmpty)
        }
        .padding()
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
