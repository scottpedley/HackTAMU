//
//  InvestmentCatagory.swift
//  HackTAMU
//
//  Created by Amy Hong on 1/28/23.
//

import SwiftUI

struct InvestmentCategory: View {
    var category: String
    
    @State private var showingPopover = false
    
    var body: some View {
        
        VStack{
            HStack{
                Text(category)
                    .bold()
                    .font(.largeTitle)
                
                Spacer()
                Button(action:{
                    showingPopover = true
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

struct InvestmentCatagory_Previews: PreviewProvider {
    static var previews: some View {
        InvestmentCategory(category: "Bonds")
    }
}
