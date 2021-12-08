//
//  Create_Game_Screen.swift
//  Teacher App
//
//  Created by Jake S on 12/7/21.
//

import SwiftUI

struct Create_Game_Screen: View {
    var body: some View {
        VStack {
            Text("Edit Questions")
                .underline()
                .bold()
                .padding(.bottom, 25)
                .padding(.top, 40)
                .font(.system(size: 40))
            HStack {
                VStack {
                    CustomButton(name: "Add Image", width: 325, height: 120, color: Color("LightPurple"), secondaryColor: .black, img: "plus")
                        .padding(.leading, 70)
                        .font(.system(size: 50))
                    Spacer()
                    CustomButton(name: "Question 1", width: 325, height: 69, color: Color("BoxBlue"), secondaryColor: .black, img: "")
                        .padding(8)
                        .padding(.leading, 70)
                    CustomButton(name: "Question 2", width: 325, height: 69, color: Color("BoxBlue"), secondaryColor: .black, img: "")
                        .padding(8)
                        .padding(.leading, 70)
                    CustomButton(name: "Question 3", width: 325, height: 69, color: Color("BoxBlue"), secondaryColor: .black, img: "")
                        .padding(8)
                        .padding(.leading, 70)
                    CustomButton(name: "Question 4", width: 325, height: 69, color: Color("BoxBlue"), secondaryColor: .black, img: "")
                        .padding(.bottom, 55)
                        .padding(.leading, 70)
                }
                CustomButton(name: "+   ", width: 51, height: 300, color: Color("Tan"), secondaryColor: .black, img: "")
                    .font(.system(size: 40))
                    .padding(.bottom, 30)
            }
        }
    }
}
struct Create_Game_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Create_Game_Screen()
    }
}
