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
    let width: CGFloat
    let height: CGFloat
    var body: some View {
        Button(action: {}) {
            ZStack {
                RoundedRectangle(cornerRadius: 4, style: .continuous)
                    .frame(width: width + 5, height: height + 5, alignment: .center)
                    .foregroundColor(.black)
                RoundedRectangle(cornerRadius: 4, style: .continuous)
                    .frame(width: width, height: height, alignment: .center)
                    .foregroundColor(.yellow)
                Text("jake")
                    .foregroundColor(.black)
            }
        }
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(width: 230, height: 30)
// add default peramiters 
    }
}
