//
//  ContentView.swift
//  Teacher App
//
//  Created by Sam L on 11/12/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        CustomButton(name: "jake", width: 33, height: 41)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
