//
//  CustomLeaderboard.swift
//  Teacher App
//
//  Created by Cameron M on 11/18/21.
//

import SwiftUI



struct CustomLeaderboard: View {
    var body: some View {
        NavigationView {
            List {
                Text("Student Name")
                Text("Student Name")
                Text("Student Name")
                Text("Student Name")
                Text("Student Name")
                Text("Student Name")
                Text("Student Name")
                Text("Student Name")
                Text("Student Name")
                Text("Student Name")
            }
            .navigationTitle("LeaderBoard")
        }
    }
}

struct CustomLeaderboard_Previews: PreviewProvider {
    static var previews: some View {
        CustomLeaderboard()
    }
}
