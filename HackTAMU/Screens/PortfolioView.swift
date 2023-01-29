//
//  PortfolioView.swift
//  HackTAMU
//
//  Created by Amy Hong on 1/28/23.
//

import SwiftUI

struct PortfolioView: View {
    @State var name: String = "Amy"
    
    var body: some View {
        ZStack {
            
            VStack {
                // Greeting Title
                HStack {
                    Text("Hello " + name + "!")
                        .bold()
                        .font(.largeTitle)
                    Spacer()
                }
                .padding(.leading, 20)
                .padding(.top, 30)
                
                Spacer()
                    
                NavigationView {
                    VStack(spacing: 20){
                        CircleGraph()
                        
                        Spacer()
                        
                        ScrollView{
                        
                            VStack() {
                                CategoryButton(catagoryTitle: "Bonds", color: .blue)
                                CategoryButton(catagoryTitle: "Stocks", color: .red)
                                CategoryButton(catagoryTitle: "Index", color: .yellow)
                                CategoryButton(catagoryTitle: "Crypto", color: .green)
                            }
                            .frame(height: 300)
                        } //: SCROLL VIEW
                    } //: VSTACK
                } //: NAV VIEW
            }
                
                
        } //: ZSTACK
    }
}




struct PortfolioView_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioView()
    }
}
