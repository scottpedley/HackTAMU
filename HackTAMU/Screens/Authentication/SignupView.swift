//
//  SignupView.swift
//  HackTAMU
//
//  Created by Amy Hong on 1/28/23.
//

import SwiftUI

struct SignupView: View {
    
    // MARK: PROPERTY
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    
    @State private var invalidName = 0
    @State private var invalidEmail = 0
    @State private var invalidPassword = 0
    
    // MARK: BODY
    var body: some View {
        
        let titleTextColor: Color = Color.black
        let buttonForegroundColor: Color = Color.black
        let buttonStrokeColor: Color = Color.teal
        
        ZStack(){
            LayeredBackground(contentBackground: Color.white)
            
            VStack {
                // MARK: BACK
                HStack {
                    Button(action: {
                        // ACTION: BACK TO TITLE PAGE
                    }) {
                        Text("\(Image(systemName: "chevron.left"))")
                            .foregroundColor(.white)
                            .padding(.leading, 20)
                            .font(.system(size: 25))
                    }
                    .foregroundColor(Color.white)
                    Spacer()
                } //: BACK HSTACK
                Spacer()
                
                VStack(){
                    Text("Create Account")
                        .font(.title)
                        .bold()
                        .foregroundColor(titleTextColor)
                        .padding(.bottom, 30)
                    
                    
                    // MARK: INPUT FORUM
                    VStack{
                        TextField("Name", text: $name)
                            .padding()
                            .frame(width: 300, height: 50, alignment: .center)
                            .background(Color(.lightGray).opacity(0.1))
                            .cornerRadius(10)
                            .border(.red, width: CGFloat(invalidName))
                            .padding(.bottom, 15)
                        TextField("Email", text: $email)
                            .padding()
                            .frame(width:300, height: 50, alignment: .center)
                            .background(Color(.lightGray).opacity(0.1))
                            .cornerRadius(10)
                            .border(.red, width: CGFloat(invalidEmail))
                            .padding(.bottom, 15)
                        TextField("Password", text: $password)
                            .padding()
                            .frame(width:300, height: 50, alignment: .center)
                            .background(Color(.lightGray).opacity(0.1))
                            .cornerRadius(10)
                            .border(.red, width: CGFloat(invalidPassword))
                    } //: FORUM VSTACK
                    .padding(.bottom, 30)
                    
                    
                    // MARK: BUTTONS
                    Button(action: {
                        // ACTION: TO SIGNUP PAGE
                    }) {
                        Text("Sign up")
                            .frame(width:300, height: 50)
                            .buttonStyle(.borderedProminent)
                            .bold()
                            .overlay(
                                RoundedRectangle(cornerRadius: 25)
                                    .stroke(buttonStrokeColor, lineWidth: 2)
                            )
                    } //: SIGNUP BUTTON
                    .foregroundColor(buttonForegroundColor)
                    
                    Button(action: {
                        // ACTION: GOOGLE AUTHENTICATION -> HOME PAGE
                    }) {
                        HStack {
                            Image("GoogleIcon")
                                .resizable()
                                .frame(width:30, height:30)
                            Text("Sign up with Google")
                                .buttonStyle(.borderedProminent)
                                .bold()
                        }
                        .frame(width:300, height: 50)
                        .overlay(
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(buttonStrokeColor, lineWidth: 2)
                        )
                    } //: WITH GOOGLE BUTTON
                    .padding()
                    .foregroundColor(buttonForegroundColor)
                    
                } //: INPUT FORUM VSTACK
                .padding(.bottom, 20)
                
            } //: OUTER VSTACK
            
        } //: ZSTACK
        
    } //: BODY
    
} //: SIGNUP VIEW

    
    
// MARK: PREVIEW
struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}
