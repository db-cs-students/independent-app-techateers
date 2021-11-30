//
//  CustomButton.swift
//  Teacher App
//
//  Created by Jake S on 11/15/21.
//

import SwiftUI

///
///
///
struct CustomButton: View {
    let name: String
    let width: CGFloat
    let height: CGFloat
    var color: Color
    var secondaryColor: Color
    var body: some View {
        Button(action: {}) {
            ZStack {
                RoundedRectangle(cornerRadius: 4, style: .continuous)
                    .frame(width: width + 5, height: height + 5, alignment: .center)
                    .foregroundColor(secondaryColor)
                RoundedRectangle(cornerRadius: 4, style: .continuous)
                    .frame(width: width, height: height, alignment: .center)
                    .foregroundColor(color)
                Text(name)
                    .foregroundColor(secondaryColor)
            }
        }
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(name: "button", width: 230, height: 30, color: .green, secondaryColor: .black)
// add default peramiters 
    }
}
