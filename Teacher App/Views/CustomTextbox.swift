//
//  CustomTextbox.swift
//  Teacher App
//
//  Created by Cameron M on 11/17/21.
//

import SwiftUI

struct CustomTextbox: View {
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

struct CustomTextbox_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextbox(text: "")
    }
}
