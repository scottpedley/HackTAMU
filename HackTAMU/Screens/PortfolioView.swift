//
//  PortfolioView.swift
//  HackTAMU
//
//  Created by Amy Hong on 1/28/23.
//

import SwiftUI

struct PortfolioView: View {
    @State var name: String = "Amy"
    @State var showGreeting: Bool = true
    
    var body: some View {
        NavigationView {
            ZStack{
                // Background Color
                Color.white
            
                VStack {
                    // Greeting Title
                    if showGreeting {
                        HStack {
                            Text("Hello " + name + "!")
                                .bold()
                                .font(.largeTitle)
                            Spacer()
                        }
                        .padding(.leading, 20)
                        .padding(.top, 30)
                    }
                    
                    Spacer()
                    ScrollView{
                        VStack(spacing: 20){
                            CircleGraph()
                            
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
                        } //: VSTACK
                    } //: SCROLL VIEW
                }
            }
        } //: NAV VIEW
    }
}




struct PortfolioView_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioView()
    }
}
