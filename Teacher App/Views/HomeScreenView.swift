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
                ScrollView(.horizontal){
                    HStack(spacing: 10) {
                        CustomButton(name: "linear equations", width: 150, height: 100, img: "gamecontroller")
                        CustomButton(name: "linear equations", width: 150, height: 100, img: "gamecontroller")
                        CustomButton(name: "linear equations", width: 150, height: 100, img: "gamecontroller")
                        CustomButton(name: "linear equations", width: 150, height: 100, img: "gamecontroller")
                        CustomButton(name: "linear equations", width: 150, height: 100, img: "gamecontroller")
                    }
                }
                .padding()
                ScrollView(.horizontal){
                    HStack(spacing: 15) {
                        CustomButton(name: "linear equations", width: 150, height: 100, img: "studentdesk")
                        CustomButton(name: "linear equations", width: 150, height: 100, img: "studentdesk")
                        CustomButton(name: "linear equations", width: 150, height: 100, img: "studentdesk")
                        CustomButton(name: "linear equations", width: 150, height: 100, img: "studentdesk")
                        CustomButton(name: "linear equations", width: 150, height: 100, img: "studentdesk")
                    }
                }
                .padding()
                Spacer()
            }
            
        }
    }
}
struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}

