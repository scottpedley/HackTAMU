//
//  NavigationBar.swift
//  HackTAMU
//
//  Created by Amy Hong on 1/28/23.
//

import SwiftUI
struct testView: View{
    var body: some View{
        NavigationView{
            ZStack{
                Color.red
            }
            .navigationTitle("Home")
        }
        
    }
}
struct NavigationBar: View {
    var body: some View {
        TabView{
            testView()
                .tabItem{
                    Image(systemName: "house")
                    Text("Home")
                }
            Text("Home")
                .tabItem{
                    Image(systemName: "highlighter")
                    Text("Home")
                }
            Text("Home")
                .tabItem{
                    Image(systemName: "lasso")
                    Text("Home")
                }
            
    
            
        }
    }
}

struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBar()
    }
}
