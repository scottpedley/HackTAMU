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
        VStack{
            TabView{
                PortfolioView()
                    .tabItem{
                        Image(systemName: "house")
                        Text("Portfolio")
                    }
                RiskAnalysisView()
                    .tabItem{
                        Image(systemName: "exclamationmark.triangle")
                        Text("Home")
                    }
                AccountView()
                    .tabItem{
                        Image(systemName: "person.circle")
                        Text("Account")
                    }
            } //: TAB VIEW
        } //: VSTACK
    }
}


// MARK: PREVIEW
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
