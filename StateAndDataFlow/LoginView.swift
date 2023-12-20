//
//  LoginView.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 18.10.2023.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject private var userManager: UserManager
    @State private var name = ""
    
    var body: some View {
        VStack {
            HStack {
                TextField("Enter your name", text: $name)
                    .multilineTextAlignment(.center)
                    .padding(.leading, 100)
            
                Text("\(name.count)")
                    .foregroundStyle(name.count >= 3 ? .green : .red)
                    .padding(.trailing, 90)
            }
            
            Button(action: login) {
                Label("OK", systemImage: "checkmark.circle")
            }
            .disabled(name.count < 3)
        }
    }
    
    private func login() {
        if !name.isEmpty {
            userManager.name = name
            userManager.isLoggedIn.toggle()
        }
    }
}

#Preview {
    LoginView()
}
