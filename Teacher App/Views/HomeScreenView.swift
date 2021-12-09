//
//  HomeScreenView.swift
//  Teacher App
//
//  Created by Sam L on 12/1/21.
//
import SwiftUI
struct HomeScreenView: View {
    @EnvironmentObject var data: Data
    
    var body: some View {
        NavigationView {
            VStack{
                Text("Favorite Quizes")
                ScrollView(.horizontal){
                    HStack(spacing: 10) {
                        NavigationLink(
                            destination: Text("hey"),
                            label: {
                                CustomButton(name: "Add Game", width: 110, height: 100, color: .yellow, secondaryColor: .blue, img: "plus")
                            })
                        ForEach(data.games) { game in
                            NavigationLink(
                                destination: Text(game.name),
                                label: {
                                CustomButton(name: game.name, width: 110, height: 100, color: .yellow, secondaryColor: .blue, img: "gamecontroller")
                            })
                        }
                    }
                }
                    .padding()
                    Text("Classes")
                    ScrollView(.horizontal){
                        HStack(spacing: 10) {
                            NavigationLink(
                                destination: Text("hey"),
                                label: {
                                    CustomButton(name: "Add Class", width: 110, height: 100, color: .yellow, secondaryColor: .blue, img: "plus")
                                })
                        }
                    }
                    .padding()
                CustomLeaderboard(cname: data.courses[0].name, studentlist: data.courses[0].roll)
            }
        }
    }
}
struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
            .environmentObject(Data())
    }
}

