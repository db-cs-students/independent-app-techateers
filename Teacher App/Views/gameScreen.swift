//
//  gameScreen.swift
//  Teacher App
//
//  Created by Cameron M on 12/3/21.
//

import SwiftUI

struct gameScreen: View {
    
    static let students: [Student] = [
        Student(name: "math gaime", highScore: 2006),
        Student(name: "science", highScore: 52773),
        Student(name: "Mr. Bailey's class", highScore: 273923826),
        Student(name: "Beans Quiz", highScore: 6282892),
        Student(name: "the fun one", highScore: 7393),
        Student(name: "cheeseeee", highScore: 11542623),
        Student(name: "Jake's game", highScore: 4830),
        Student(name: "merry christmas", highScore:25383 ),
        Student(name: "happy christmas", highScore: 73927),
        Student(name: "gameeeszzzz", highScore: 73838),
        Student(name: "apples", highScore: 7383),
        Student(name: "bannanas", highScore: 5349393),
        Student(name: "oranges", highScore: 22),
        Student(name: "strawburrys", highScore: 6739383),
        Student(name: "pumkin", highScore: 739384),
        Student(name: "nut", highScore: 6739293834),
        Student(name: "grape", highScore: 6969696969),
        Student(name: "beef", highScore: 420420420),
        Student(name: "wine", highScore: 888888383),
        Student(name: "Dr. pepper", highScore: 1516120)
    ].sorted(by: {$0.highScore > $1.highScore})
    
    var body: some View {
        VStack {
            CustomButton(name: "Create New", width: 225, height: 85, color: Color("BoxBlue"), secondaryColor: .black)
                .padding();
            CustomLeaderboard(cname: "A Block", studentlist: gameScreen.students)
        }
    }
}

struct gameScreen_Previews: PreviewProvider {
    static var previews: some View {
        gameScreen()
    }
}
