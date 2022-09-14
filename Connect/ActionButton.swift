//
//  ActionButton.swift
//  Connect
//
//  Created by Jingying(Frieda) Huang on 2022/9/14.
//

import SwiftUI

extension Button {
    func withActionButtonStyles() -> some View {
        self.font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(minWidth: 0, maxWidth: .infinity)
            .background(Color.green)
            .cornerRadius(10)
    }
}
