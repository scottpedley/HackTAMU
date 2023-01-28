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
            PortfolioView()
                .tabItem{
                    Image(systemName: "house")
                    Text("Home")
                }
            Text("Risk Management View")
                .tabItem{
                    Image(systemName: "highlighter")
                    Text("Dashboard")
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
