//
//  CustomLeaderboard.swift
//  Teacher App
//
//  Created by Cameron M on 11/18/21.
//

import SwiftUI

struct Student: Identifiable {
    var id = UUID()
    var name: String
    var highScore: Int
}

var students = [
    Student(name: "Bob", highScore: 2000),
    Student(name: "Bailey", highScore: 100000000000000),
    Student(name: "Sam", highScore: 1)
].sorted(by: {$0.highScore > $1.highScore})


struct CustomLeaderboard: View {
    @State var cname:String
    @State var studentlist: [String: Int] = ["bob": 2]
    var body: some View {
        VStack {
            Text(cname)
                .bold()
                .foregroundColor(.blue)
            ScrollView {
                VStack (spacing: 30) {
                    ForEach(students) { student in
                        ZStack (alignment: .leading) {
                            Rectangle()
                                .foregroundColor(.blue)
                                .cornerRadius(10)
                            HStack {
                                Text("\(students.where)")
                                Text("\(student.name)")
                                Spacer()
                                Text("\(student.highScore)")
                            }
                            .padding()
                        }
                        
                        .frame(width: 250, height: 40, alignment: .center)
                    }
//                    ForEach(studentlist , id: \.self) { student in
//                        ZStack (alignment: .leading) {
//                            Rectangle()
//                                .foregroundColor(.blue)
//                                .cornerRadius(10)
//                            HStack {
//                                Text(" \(student)")
//                                Spacer()
//                                Text("\(studentlist[student]!)")
//                            }
//                            .padding()
//                        }
//
//                        .frame(width: 250, height: 40, alignment: .center)
//
//                    }
                }
            }
        }
    }
}

struct CustomLeaderboard_Previews: PreviewProvider {
    static var previews: some View {
        CustomLeaderboard(cname:"A Block", studentlist:  ["Jimmy": 100,"john": 200])
    }
}
