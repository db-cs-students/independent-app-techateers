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
            CustomTextbox(placeholder: "Username", width: 200, height: 50, text: .constant(""))
                .padding(.top, 300)
                .padding(.bottom, 10)
            Spacer()
            CustomTextbox(placeholder: "Password", width: 200, height: 50, text: .constant(""))
                .padding(.bottom, 20)
            Spacer()
            CustomButton(name: "Login", width: 100, height: 40, img: "")
                .padding(.bottom, 350.0)
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
