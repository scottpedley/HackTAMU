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
            ZStack{
                VStack{
                    
                    Image("Graph")
                        .resizable()
                        .frame(height: 300)
                        .ignoresSafeArea()
                    
                    Text("Risk Status")
                        .bold()
                        .font(.title)
                    
                    CatagoryRisk(catagoryTitle: "Bond", riskLevel: Color.green, value: 0.1)
                    CatagoryRisk(catagoryTitle: "Stock", riskLevel: Color.yellow, value: 7)
                    CatagoryRisk(catagoryTitle: "Index", riskLevel: Color.green, value: 2)
                    CatagoryRisk(catagoryTitle: "Crypto", riskLevel: Color.red, value: 72)
                    
                    Spacer()
                }
            } //: ZSTACK
        } //: NAV VIEW
    }
}

struct RiskAnalysisView_Previews: PreviewProvider {
    static var previews: some View {
        RiskAnalysisView()
    }
}
