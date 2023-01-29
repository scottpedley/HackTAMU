//
//  InvestmentBond.swift
//  HackTAMU
//
//  Created by Scott Pedley on 1/29/23.
//

import SwiftUI

struct InvestmentBond: View {
    var body: some View {
        
        VStack{
            HStack{
                Text("Bond")
                    .bold()
                    .font(.largeTitle)
                
                Spacer()
                Button(action:{
                    
                }) {
                    Image(systemName: "plus.square.fill")
                        .resizable()
                        .foregroundColor(Color.green)
                        .frame(width: 40, height: 40)
                } //: ADD BUTTON
               
                
            } //: HEADER HSTACK
            .padding(20)
            
            Spacer()
            
            VStack {
                
                
                
            } // CONTENT VSTACK
            
        } // OUTER VSTACK
    }
}

struct InvestmentBond_Previews: PreviewProvider {
    static var previews: some View {
        InvestmentBond()
    }
}
