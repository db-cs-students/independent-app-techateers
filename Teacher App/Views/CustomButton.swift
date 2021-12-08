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
    let color: Color
    let secondaryColor: Color
    let img: String
    init(name: String, width: CGFloat, height: CGFloat, color: Color, secondaryColor: Color) {
        self.name = name
        self.width = width
        self.height = height
        self.color = color
        self.secondaryColor = secondaryColor
        img = ""
    }
    
    init(name: String, width: CGFloat, height: CGFloat, color: Color, secondaryColor: Color, img: String) {
        self.color = color
        self.secondaryColor = secondaryColor
        self.name = name
        self.width = width
        self.height = height
        self.img = img
    }
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 4, style: .continuous)
                .foregroundColor(secondaryColor)
            RoundedRectangle(cornerRadius: 4, style: .continuous)
                .frame(width: width, height: height, alignment: .center)
                .foregroundColor(color)
            VStack {
                Group {
                    if img.isEmpty {
                        EmptyView()
                    } else {
                        Image(systemName: img)
                    }
                }
                .padding(.bottom, 1)
                Text(name)
                    .padding(.horizontal, 10.0)
                    .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                    .multilineTextAlignment(.center)
            }
            .foregroundColor(secondaryColor)
            
            
        }
        .frame(width: width + 5, height: height + 5, alignment: .center)
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(name: "game", width: 100, height: 100, color: .blue, secondaryColor: .green, img: "gamecontroller")
    }
}
