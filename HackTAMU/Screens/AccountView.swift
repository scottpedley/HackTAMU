//
//  AccountView.swift
//  HackTAMU
//
//  Created by Amy Hong on 1/29/23.
//

import SwiftUI

struct AccountView: View {
    var body: some View {
        
        VStack {
            HStack {
                Spacer()
                Image(systemName: "person.circle")
                    .resizable()
                    .frame(width: 70, height: 70)
                    .foregroundColor(.gray)
                    .padding(.leading, 60)
                
                Spacer()
                Image(systemName: "gearshape.fill")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .padding(.trailing, 30)
                    .foregroundColor(Color(.black).opacity(0.8))
            }
            .padding(.top, 10)
            
            Text("@itsAmyHong")
            Divider()
            
            HStack {
                VStack(spacing: 20){
                    Text("Name: ")
                    Text("Email: ")
                }
                Spacer()
                VStack(spacing: 20){
                    Text("Amy Hong")
                    Text("hong2020.ok@gmail.com")
                }
            }
            .padding()
            
            
            
            Spacer()
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
