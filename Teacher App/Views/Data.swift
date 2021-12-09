//
//  Data.swift
//  Teacher App
//
//  Created by Sam L on 12/9/21.
//

import Foundation
import SwiftUI

struct Games: Identifiable {
    var id = UUID()
    var name: String
}
struct Courses: Identifiable {
    var id = UUID()
    var name: String
    var roll: [Student]
}
struct Student: Identifiable {
    var id = UUID()
    var name: String
    var highScore: Int
}
class Data: ObservableObject {
    @Published var courses: [Courses] = [
        Courses(
            name: "AA Block",
            roll: [
                Student(name: "Ablock", highScore: 2000),
                Student(name: "Bailey", highScore: 100000000000000),
                Student(name: "Sam", highScore: 1)
            ].sorted(by: {$0.highScore > $1.highScore}))
    ]
    
    @Published var games: [Games] = [
        Games(name: "Hey"),
        Games(name: "Bob"),
        Games(name: "Jim"),
    ]
    
    func addGame(_ game: Games) {
        games.append(game)
    }
}
