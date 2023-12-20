//
//  ButtonLogOut.swift
//  StateAndDataFlow
//
//  Created by Елизавета Шалдыбина on 20.12.2023.
//

import SwiftUI

struct ButtonLogOut: View {
    let titleButton: String
    let action: () -> ()
    
    var body: some View {
        Button(action: action) {
            Text(titleButton)
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(.white)
        }
        .frame(width: 200, height: 60)
        .background(.blue)
        .clipShape(.rect(cornerRadius: 20))
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(.black, lineWidth: 4)
        )
    }
}

#Preview {
    ButtonLogOut(titleButton: "LogOut", action: {})
}
