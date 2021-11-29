//
//  ContentView.swift
//  Teacher App
//
//  Created by Sam L on 11/12/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        CustomButton(name: "login", width: 100, height: 40)
            .padding()
            .position(x: 150, y: 350)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
