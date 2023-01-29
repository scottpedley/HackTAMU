//
//  CatagoryButton.swift
//  HackTAMU
//
//  Created by Amy Hong on 1/28/23.
//

import SwiftUI

struct CatagoryButton: View {
    var catagoryTitle:String
    
    var body: some View {
        NavigationLink(
            destination: InvestmentCategory(category: catagoryTitle)
        ) {
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: UIScreen.main.bounds.width, height:80)
                    .foregroundColor(Color(.lightGray).opacity(0.1))
                HStack {
                    Text(catagoryTitle)
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
    }
}

struct CatagoryButton_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CatagoryButton(catagoryTitle: "Bonds")
        }
    }
}
