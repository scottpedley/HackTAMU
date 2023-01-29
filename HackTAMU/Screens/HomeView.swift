//
//  ContentView.swift
//  HackTAMU
//
//  Created by Amy Hong on 1/28/23.
//

import SwiftUI

struct HomeView: View {
    
    // MARK: BODY
    var body: some View {
        TabView{
            RiskAnalysisView()
                .tabItem{
                    Image(systemName: "exclamationmark.triangle")
                    Text("Home")
                }
            PortfolioView()
                .tabItem{
                    Image(systemName: "house")
                    Text("Portfolio")
                }
            Text("TBH View")
                .tabItem{
                    Image(systemName: "lasso")
                    Text("Other")
                }
        }
    }
}


// MARK: PREVIEW
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
