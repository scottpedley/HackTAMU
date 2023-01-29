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
    
    var body: some View {
        NavigationLink(
            destination: InvestmentCategory(category: catagoryTitle)
        ) {
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: UIScreen.main.bounds.width-5, height:60)
                    .foregroundColor(Color(.lightGray).opacity(0.1))
                    .overlay(
                      RoundedRectangle(cornerRadius: 10).fill(color).mask(    // << here !!
                        HStack {
                            Rectangle().frame(width: 10)
                            Spacer()
                        }
                    ).allowsHitTesting(false))
                HStack {
                    Text(catagoryTitle)
                        .padding(.leading, 10)
                        .bold()
                        .padding()
                        .font(.title)
                    Spacer()
                    Text("\(Image(systemName: "chevron.right"))")
                        .foregroundColor(.black)
                        .padding(.leading, 20)
                        .font(.system(size: 25))
                        .padding()
                }
            } //: ZSTACK
        }
        .foregroundColor(Color.black)
        .navigationBarBackButtonHidden(true)
    }
}

struct CategoryButton_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CategoryButton(catagoryTitle: "Bonds", color: Color.blue)
        }
    }
}
