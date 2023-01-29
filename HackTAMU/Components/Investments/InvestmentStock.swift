//
//  InvestmentStock.swift
//  HackTAMU
//
//  Created by Scott Pedley on 1/29/23.
//

import SwiftUI

struct InvestmentStock: View {
    var body: some View {
        
        VStack{
            HStack{
                Text("Stock")
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

struct InvestmentStock_Previews: PreviewProvider {
    static var previews: some View {
        InvestmentStock()
    }
}
