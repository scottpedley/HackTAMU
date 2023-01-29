//
//  CatagoryButton.swift
//  HackTAMU
//
//  Created by Amy Hong on 1/28/23.
//

import SwiftUI

struct CategoryButton: View {
    var catagoryTitle:String
    var color: Color
    var value: CGFloat
    
    var body: some View {
        
        HStack {
            RoundedRectangle(cornerRadius: 5)
                .frame(width: 20, height: 20)
                .padding(.leading, 20)
                .foregroundColor(color)
            
            NavigationLink(
                destination: InvestmentCategory(category: catagoryTitle)
            ) {
                ZStack{
                    HStack {
                        Text(catagoryTitle)
                            .bold()
                            .padding(.leading, 10)
                            .font(.title2)
                        Spacer()
                        Text(" \(String(format: "%.2f", value))%")
                        Text("\(Image(systemName: "chevron.right"))")
                            .foregroundColor(.black)
                            .padding(.trailing, 20)
                        
                    }
                } //: ZSTACK
                // }
                
                .foregroundColor(Color.black)
            } //: HSTACK
        }
    }
    
    struct CategoryButton_Previews: PreviewProvider {
        static var previews: some View {
            NavigationView {
                CategoryButton(catagoryTitle: "Bonds", color: Color.blue, value: 45)
            }
        }
    }
}
