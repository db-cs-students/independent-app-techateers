//
//  gameScreen.swift
//  Teacher App
//
//  Created by Cameron M on 12/3/21.
//

import SwiftUI

struct gameScreen: View {
    var body: some View {
        VStack {
            CustomButton(name: "Create New", width: 225, height: 85, color: .red, secondaryColor: .blue)
                .padding()
            CustomLeaderboard(cname:"A Block", studentlist: ["math","science","literacy","Mr. Bailey's class","Sleep time"])
        }
    }
}

struct gameScreen_Previews: PreviewProvider {
    static var previews: some View {
        gameScreen()
    }
}
