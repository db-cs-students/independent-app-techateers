//
//  CustomTextbox.swift
//  Teacher App
//
//  Created by Cameron M on 11/17/21.
///Users/cblock/Dev/independent-app-techateers/CustomTextBox.swift

import SwiftUI

struct Wrong: View {
    @State var text: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 4, style: .continuous)
                .frame(width: 10, height: 15, alignment: .center)
                .foregroundColor(.black)
            TextField("Placeholder", text: $text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(5)
        }
    }
}

struct Wrong_Previews: PreviewProvider {
    static var previews: some View {
        Wrong(text: "")
    }
}
