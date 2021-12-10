//
//  CreateClass.swift
//  Teacher App
//
//  Created by Jake S on 12/10/21.
//

import SwiftUI

struct CreateClass: View {
    var body: some View {
        VStack {
            Text("Class Make")
                .padding()
            Text("Class name: Mr. Bailey's A Block")
                .padding()
            ZStack {
                Rectangle()
                    .fill(Color("LightBlue"))
                    .frame(width: 1500, height: 600, alignment: .center)
                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                VStack {
                    Text("Class Group: A")
                        .padding(.bottom, 200)
                        .font(.system(size: 30))
                    CustomButton(name: "+ Add Group", width: 150, height: 100, color: Color("BoxBlue"), secondaryColor: .black, img: "")
                }
            }
            CustomButton(name: "+ Add Class", width: 150, height: 50, color: Color("Tan"), secondaryColor: .black, img: "")
                .padding(.top, 30)
            Spacer()
        }
    }
}

struct CreateClass_Previews: PreviewProvider {
    static var previews: some View {
        CreateClass()
    }
}
