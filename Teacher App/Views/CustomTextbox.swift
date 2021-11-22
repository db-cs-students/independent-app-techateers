//
//  CustomTextbox.swift
//  Teacher App
//
//  Created by Cameron M on 11/17/21.
//

import SwiftUI

struct CustomTextbox: View {
    var body: some View {
        ZStack {
            TextField("Placeholder", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(5)
                .background(Color.pink)
                .foregroundColor(.black)
        }
    }
}

struct CustomTextbox_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextbox()
    }
}
