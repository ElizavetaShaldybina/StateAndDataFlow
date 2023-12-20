//
//  ContentView.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 18.10.2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var timer = TimeCounter()
    @EnvironmentObject private var userManager: UserManager
    
    var body: some View {
        VStack {
            Text("Hi, \(userManager.name)")
                .font(.largeTitle)
                .padding(.top, 100)
            Text(timer.counter.formatted())
                .font(.largeTitle)
                .padding(.top, 100)
            
            Spacer()
            
            ButtonStart(timer: timer)
            
            Spacer()
            
            ButtonLogOut(titleButton: "LogOut") {
                logOutUser()
            }
        }
    }
    
    func logOutUser() {
        userManager.isLoggedIn.toggle()
    }
}

#Preview {
    ContentView()
        .environmentObject(UserManager())
}
