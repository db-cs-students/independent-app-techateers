//
//  CustomLeaderboard.swift
//  Teacher App
//
//  Created by Cameron M on 11/18/21.
//

import SwiftUI



struct CustomLeaderboard: View {
    @State var Cname:String
    @State var Studentlist: [String]
    var body: some View {
        NavigationView {
            List {
                ForEach(Studentlist , id: \.self) { student in
                    HStack{
                        Text(student)
                    }
                }
            }
            .navigationTitle(Cname)
        }
    }
}

struct CustomLeaderboard_Previews: PreviewProvider {
    static var previews: some View {
        CustomLeaderboard(Cname:"A Block", Studentlist: ["Jimmy","John","Jake","Jason","cameron"`])
    }
}
