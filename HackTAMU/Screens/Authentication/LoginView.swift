//
//  LoginView.swift
//  HackTAMU
//
//  Created by Amy Hong on 1/28/23.
//

import SwiftUI

struct LoginView: View {
    
    // MARK: PROPERTY
    @State private var email: String = ""
    @State private var password: String = ""
    
    @State private var invalidEmail = 0
    @State private var invalidPassword = 0
    
    
    // MARK: BODY
    var body: some View {
        
        // Color Constants
        let titleTextColor: Color = Color.black
        let buttonForegroundColor: Color = Color.black
        let buttonStrokeColor: Color = Color.teal
        
        ZStack {
            LayeredBackground(contentBackground: Color.white, contentHeight: 300)
            
            // MARK: INPUT FORUM
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
                
                VStack {
                    Text("Log In")
                        .font(.title)
                        .bold()
                        .foregroundColor(titleTextColor)
                        .padding(.bottom, 30)
                    
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
                    
                    
                    // MARK: BUTTONS
                    
                    Button(action: {
                        // ACTION: ENTER HOME VIEW
                    }) {
                        Text("Log In")
                            .frame(width:300, height: 50)
                            .buttonStyle(.borderedProminent)
                            .bold()
                            .overlay(
                                RoundedRectangle(cornerRadius: 25)
                                    .stroke(buttonStrokeColor, lineWidth: 2)
                            )
                            .padding(.top, 30)
                    } //: LOGIN BUTTON
                    .foregroundColor(buttonForegroundColor)
                    
                    Button(action: {
                        // ACTION: GOOGLE AUTHENTICATE -> HOMEVIEW
                        
                    }) {
                        HStack {
                            Image("GoogleIcon")
                                .resizable()
                                .frame(width:30, height:30)
                            Text("Log In with Google")
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
                .padding(.bottom, 80)
                
            } //: OUTER VSTACK
            
        }
    }
}

// MARK: PREVIEW
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
