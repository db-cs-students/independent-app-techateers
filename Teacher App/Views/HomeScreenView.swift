//
//  HomeScreenView.swift
//  Teacher App
//
//  Created by Sam L on 12/1/21.
//

import SwiftUI

struct HomeScreenView: View {
    var body: some View {
        NavigationView {
            VStack{
                Text("Favorite Quizes")
                ScrollView(.horizontal){
                    HStack(spacing: 10) {
                        CustomButton(name: "Liner Equation", width: 110, height: 100, color: .yellow, secondaryColor: .blue, img: "gamecontroller")
                        CustomButton(name: "Liner Equation", width: 110, height: 100, color: .yellow, secondaryColor: .blue, img: "gamecontroller")
                        CustomButton(name: "Liner Equation", width: 110, height: 100, color: .yellow, secondaryColor: .blue, img: "gamecontroller")
                        CustomButton(name: "Liner Equation", width: 110, height: 100, color: .yellow, secondaryColor: .blue, img: "gamecontroller")
                    }
                }
                .padding()
                Text("Classes")
                ScrollView(.horizontal){
                    HStack(spacing: 10) {
                        CustomButton(name: "Liner Eqiution", width: 100, height: 100, color: .yellow, secondaryColor: .blue, img: "gamecontroller")
                        CustomButton(name: "Liner Eqiution", width: 100, height: 100, color: .yellow, secondaryColor: .blue, img: "gamecontroller")
                        CustomButton(name: "Liner Eqiution", width: 100, height: 100, color: .yellow, secondaryColor: .blue, img: "gamecontroller")
                    }
                }
                .padding()
                CustomLeaderboard()
            }
        }
    }
}
struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}

