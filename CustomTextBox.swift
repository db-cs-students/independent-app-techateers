//
//  CustomTextbox.swift
//  Teacher App
//
//  Created by Cameron M on 11/17/21.
//

import SwiftUI

struct CustomTextbox: View {
    var placeholder: String
    var width: CGFloat
    var height: CGFloat
    @Binding var text: String
    
    var body: some View {
            VStack(alignment: .leading) {
                TextField(placeholder, text: $text)
                    .padding()
                    .frame(width: width + 5, height: height + 5, alignment: .center)
                    .border(Color.black, width: 10)
                    .cornerRadius(5)
            }
        }
    }

struct CustomTextbox_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextbox(placeholder: "A String", width: 200, height: 40, text: .constant("") )
    }
}
