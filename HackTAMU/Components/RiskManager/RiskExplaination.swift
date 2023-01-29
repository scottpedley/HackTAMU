//
//  RiskExplaination.swift
//  HackTAMU
//
//  Created by Amy Hong on 1/29/23.
//

import SwiftUI

struct RiskExplaination: View {
    var category: String
    
    var body: some View {
        ZStack{
            VStack{
                // Titles
                
                
                // Text Descriptions
                if category == "Bond"{
                    Text("Put text description here!")
                        .foregroundColor(.black)
                }
                else if category == "Stock" {
                    Text("Put text description here!")
                        .foregroundColor(.black)
                    
                }
                else if category == "Index" {
                    Text("Put text description here!")
                        .foregroundColor(.black)
                    
                }
                else if category == "Crypto" {
                    Text("Put text description here!")
                        .foregroundColor(.black)
                }
            } //: VSTACK
        }
        
    }
}

struct RiskExplaination_Previews: PreviewProvider {
    static var previews: some View {
        RiskExplaination(category: "Bond")
    }
}
