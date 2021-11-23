//
//  CustomLeaderboard.swift
//  Teacher App
//
//  Created by Cameron M on 11/18/21.
//

import SwiftUI



struct CustomLeaderboard: View {
    @State var cname:String
    @State var studentlist: [String]
    var body: some View {
        VStack {
            Text(cname)
                .bold()
                .foregroundColor(.blue)
            ScrollView {
                VStack (spacing: 30) {
                    ForEach(studentlist , id: \.self) { student in
                        ZStack (alignment: .leading) {
                            Rectangle()
                                .foregroundColor(.blue)
                                .cornerRadius(10)
                            HStack {
                                Text("i \(student)")
                                Spacer()
                                Text("2000")
                            }
                            .padding()
                            
                        }
                        
                        .frame(width: 250, height: 40, alignment: .center)
                        
                    }
                }
            }
        }
    }
}

struct CustomLeaderboard_Previews: PreviewProvider {
    static var previews: some View {
        CustomLeaderboard(cname:"A Block", studentlist: ["Jimmy","John","Jake","Jason","Cameron","John","Jake","Jason","Cameron","John","Jake","Jason","Cameron","John","Jake","Jason","Cameron"])
    }
}
