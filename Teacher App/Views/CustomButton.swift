//
//  CustomButton.swift
//  Teacher App
//
//  Created by Jake S on 11/15/21.
//

import SwiftUI

struct CustomButton: View {
    var body: some View {
        Button(action: {}) {
            ZStack {
                RoundedRectangle(cornerRadius: 5, style: .continuous)
                    .frame(width: 230, height: 30, alignment: .center)
                    .padding(6)
                    .foregroundColor(.yellow)
                    .clipShape(Capsule(), style: /*@START_MENU_TOKEN@*/FillStyle()/*@END_MENU_TOKEN@*/)
                    .background(Color(.black))
                    .cornerRadius(10)
                Text("I am a Button :)")
                    .foregroundColor(.black)
                    
                    
            }
            
            
        }
        
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton()
    }
}
