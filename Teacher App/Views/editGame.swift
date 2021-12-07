//
//  editGame.swift
//  Teacher App
//
//  Created by Jake S on 12/3/21.
//

import SwiftUI

struct editGame: View {
    var body: some View {
        VStack {
            CustomButton(name: "Class Management", width: 225, height: 85, color: .red, secondaryColor: .blue)
            CustomButton(name: "Create Class", width: 125, height: 50, color: .red, secondaryColor: .blue)
                .padding()
        }

    }
}

struct editGame_Previews: PreviewProvider {
    static var previews: some View {
        editGame()
    }
}
