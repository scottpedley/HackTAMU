//
//  RiskAnalysis.swift
//  HackTAMU
//
//  Created by Amy Hong on 1/29/23.
//

import SwiftUI

struct RiskAnalysisView: View {
    var body: some View {
        NavigationView {
            ScrollView{
                VStack() {
                    CategoryButton(catagoryTitle: "Bonds", color: .blue)
                    CategoryButton(catagoryTitle: "Stocks", color: .red)
                    CategoryButton(catagoryTitle: "Index", color: .yellow)
                    CategoryButton(catagoryTitle: "Crypto", color: .green)
                }
                .frame(height: 300)
            } //: SCROLL VIEW
        } //: NAV VIEW
    }
}

struct RiskAnalysisView_Previews: PreviewProvider {
    static var previews: some View {
        RiskAnalysisView()
    }
}
