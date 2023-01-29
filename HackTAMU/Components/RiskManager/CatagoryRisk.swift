//
//  CatagoryRisk.swift
//  HackTAMU
//
//  Created by Amy Hong on 1/29/23.
//

import SwiftUI

struct CatagoryRisk: View {
    
    var catagoryTitle:String
    var riskLevel: Color
    
    
    var body: some View {
        
        NavigationLink(
            destination: InvestmentCategory(category: catagoryTitle)
        ) {
            ZStack {
                VStack{
                    Divider()
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: UIScreen.main.bounds.width-5, height:60)
                        .foregroundColor(Color(.white).opacity(0.0))
                    Divider()
                }
                HStack {
                    Text(catagoryTitle)
                        .padding(.leading, 10)
                        .bold()
                        .padding()
                        .font(.title)
                    Spacer()
                    
                    Text("\(Image(systemName: "circle.fill"))")
                        .foregroundColor(riskLevel)
                        .padding(.leading, 20)
                        .font(.system(size: 25))
                        .padding()
                }
            } //: ZSTACK
        }
        .foregroundColor(Color.black)
        
    }
}

struct CatagoryRisk_Previews: PreviewProvider {
    static var previews: some View {
        CatagoryRisk(catagoryTitle: "Bonds", riskLevel: Color.red)
    }
}
