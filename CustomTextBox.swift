//
//  CustomTextbox.swift
//  Teacher App
//
//  Created by Cameron M on 11/17/21.
//

import SwiftUI

struct CustomTextbox: View {
    var placeholder: String
    @Binding var text: String
    
    var body: some View {
            VStack(alignment: .leading) {
                TextField(placeholder, text: $text)
                    .padding()
                    .border(Color.black, width: 10)
            }
        }
    }

struct CustomTextbox_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextbox(placeholder: "A String", text: .constant(""))
    }
}
