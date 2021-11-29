//
//  ContentView.swift
//  Teacher App
//
//  Created by Sam L on 11/12/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()
            CustomTextbox(placeholder: "username", width: 200, height: 40, text: .constant(""))
            Spacer()
            CustomButton(name: "login", width: 100, height: 40, img: "")
                .padding(.bottom, 200.0)
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
