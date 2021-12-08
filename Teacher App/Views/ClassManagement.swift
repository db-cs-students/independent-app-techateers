//
//  editGame.swift
//  Teacher App
//
//  Created by Jake S on 12/3/21.
//

import SwiftUI

struct ClassManagement: View {
    static let students: [Student] = [
        Student(name: "Sam", highScore: 2006),
        Student(name: "jake", highScore: 52773),
        Student(name: "Cam", highScore: 273923826),
        Student(name: "Jeff", highScore: 6282892),
        Student(name: "James", highScore: 7393),
        Student(name: "Hannah", highScore: 11542623),
        Student(name: "Madox", highScore: 4830),
        Student(name: "JL", highScore:25383 ),
        Student(name: "Aiden", highScore: 73927),
        Student(name: "Grant", highScore: 73838)
    ].sorted(by: {$0.highScore > $1.highScore})
    var body: some View {
        VStack {
            CustomButton(name: "Class Management", width: 225, height: 85, color: Color("BoxBlue"), secondaryColor: .black)
            CustomButton(name: "Create Class", width: 125, height: 50, color: Color("LightGreen"), secondaryColor: .black)
                .padding()
            CustomLeaderboard(cname: "Mr. Bailey's Class", studentlist: ClassManagement.students)
        }

    }
}

struct ClassManagement_Previews: PreviewProvider {
    static var previews: some View {
        ClassManagement()
    }
}
