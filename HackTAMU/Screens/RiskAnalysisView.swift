//
//  RiskAnalysis.swift
//  HackTAMU
//
//  Created by Amy Hong on 1/29/23.
//

import SwiftUI

struct RiskAnalysisView: View {
    var body: some View {
        VStack{
            CatagoryRisk(catagoryTitle: "Bond", riskLevel: Color.green)
            CatagoryRisk(catagoryTitle: "Stock", riskLevel: Color.yellow)
            CatagoryRisk(catagoryTitle: "Index", riskLevel: Color.green)
            CatagoryRisk(catagoryTitle: "Crypto", riskLevel: Color.red)
        }
    }
}

struct RiskAnalysisView_Previews: PreviewProvider {
    static var previews: some View {
        RiskAnalysisView()
    }
}
