//
//  HomeScreenView.swift
//  Teacher App
//
//  Created by Sam L on 12/1/21.
//
import SwiftUI
struct HomeScreenView: View {
    var students : [Student]
    var games: [Games]
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
                        ForEach(games) { game in
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
                CustomLeaderboard(cname: "ABlock", studentlist: students)
            }
        }
    }
}
struct HomeScreenView_Previews: PreviewProvider {
    static let students: [Student] = [
       Student(name: "Ablock", highScore: 2000),
       Student(name: "Bailey", highScore: 100000000000000),
       Student(name: "Sam", highScore: 1)
   ].sorted(by: {$0.highScore > $1.highScore})
    
    static let games: [Games] = [
        Games(name: "Hey"),
        Games(name: "Bob"),
        Games(name: "Jim"),
    ]
    
    static var previews: some View {
        HomeScreenView(students: students, games: games)
    }
}

