//
//  ContentView.swift
//  Teacher App
//
//  Created by Sam L on 11/12/21.
//
 
import SwiftUI
 
struct ContentView: View {
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack {
            CustomTextbox(placeholder: "Username", width: 200, height: 50, text: $username)
//                .padding(.top, 300)
//                .padding(.bottom, 10)
            CustomTextbox(placeholder: "Password", width: 200, height: 50, text: $password)
//                .padding(.bottom, 20)
 
            CustomButton(name: "Login", width: 100, height: 40, color: .blue, secondaryColor: .black)
//                .padding(.bottom, 10)
            
            CustomButton(name: "Login With Google", width: 200, height: 40, color: .blue, secondaryColor: .black)
//                .padding(.bottom, 10)
            
            CustomButton(name: "Login With Apple", width: 200, height: 40, color: .blue, secondaryColor: .black)
//                .padding(.bottom, 300.0)
        }
 
    }
}
 
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

