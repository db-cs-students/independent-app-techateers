//
//  GameDetail.swift
//  Teacher App
//
//  Created by Jake S on 12/8/21.
//

import SwiftUI

struct GameDetail: View {
    
    static let students: [Student] = [
        Student(name: "Mr, Man", highScore: 2006),
        Student(name: "Cam", highScore: 7383),
        Student(name: "Jake", highScore: 5262),
        Student(name: "Debby", highScore: 92038),
        Student(name: "Sam", highScore: 1516120)
    ].sorted(by: {$0.highScore > $1.highScore})
    
    var body: some View {
        VStack {
            Text("Math Quiz 1")
                .underline()
                .font(.system(size: 50))
                .padding(.bottom, 20)
            Text("This Quiz is over basic Multiplication and Division.")
                .frame(width: 250, height: 100, alignment: .center)
                .font(.system(size: 25))
            VStack {
                ZStack {
                    Rectangle()
                        .fill(Color.gray)
                        .frame(width: 1000, height: 500)
                    HStack {
                        Text("Number of players: 22")
                            .underline()
                            .font(.system(size: 30))
                            .padding(.trailing, 125)
                            .padding(.bottom, 450)
                    }
                    HStack {
                        Text("Player List")
                            .font(.system(size: 30))
                            .padding(.trailing, 275)
                            .padding(.bottom, 375)
                    }
                    CustomLeaderboard(cname: "", studentlist: GameDetail.students)
                        .padding(.top, 120)
                        .padding(.trailing, 150)
                }
                
                
            }
            Spacer()
            CustomButton(name: "Start", width: 325, height: 69, color: Color("BoxBlue"), secondaryColor: .black, img: "triangle")
        }
    }
}

struct GameDetail_Previews: PreviewProvider {
    static var previews: some View {
        GameDetail()
    }
}
