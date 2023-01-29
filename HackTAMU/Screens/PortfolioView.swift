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
            NavigationView {
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
                        
                    VStack(spacing: 20){
                        CircleGraph()
                        
                        Spacer()
                        
                        ScrollView{
                            VStack() {
                                CategoryButton(
                                    catagoryTitle: "Bonds",
                                    color: .blue,
                                    value: findTotalValueForCategory(category: "bond")/findTotalValue(data: data) * 100)
                                CategoryButton(
                                    catagoryTitle: "Stocks",
                                    color: .red,
                                    value: findTotalValueForCategory(category: "stock")/findTotalValue(data: data) * 100)
                                CategoryButton(
                                    catagoryTitle: "Index",
                                    color: .yellow,
                                    value: findTotalValueForCategory(category: "index")/findTotalValue(data: data) * 100)
                                CategoryButton(
                                    catagoryTitle: "Crypto",
                                    color: .green,
                                    value: findTotalValueForCategory(category: "crypto")/findTotalValue(data: data) * 100)
                            }
                            .frame(height: 300)
                        } //: SCROLL VIEW
                    } //: VSTACK
                }
            } //: NAV VIEW
        } //: ZSTACK
    }
}




struct PortfolioView_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioView()
    }
}
