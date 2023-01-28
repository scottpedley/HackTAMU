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
        VStack{
            
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
        }
    }
}

struct PortfolioView_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioView()
    }
}
