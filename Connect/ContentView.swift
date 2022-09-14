//
//  ContentView.swift
//  Connect
//
//  Created by Jingying(Frieda) Huang on 2022/9/9.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var authViewModel: AuthenticationViewModel
    var body: some View {
        NavigationView {
            if authViewModel.signedIn {
                VStack {
                    Text("You are signed in!")
                    Button(action: {
                        authViewModel.signOut()
                    }, label: {
                        Text("Sign Out")
                            .frame(width: 200, height: 50)
                            .background(Color.green)
                            .foregroundColor(Color.white)
                    })
                }
            } else {
                LogInView()
            }
        }
        .onAppear {
            authViewModel.signedIn = authViewModel.isSignedIn
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(AuthenticationViewModel())
    }
}
