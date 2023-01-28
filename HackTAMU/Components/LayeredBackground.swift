//
//  LayeredBackground.swift
//  HackTAMU
//
//  Created by Amy Hong on 1/28/23.
//

import SwiftUI

struct LayeredBackground: View {
    
    var contentBackground: Color
    
    var body: some View {
        
        let leftGradientColor: Color = Color.teal
        let rightGradientColor: Color = Color.blue
        let revealedGradientHeight: CGFloat = 300
        
        ZStack{
            // Background Color
            LinearGradient(gradient: Gradient(colors: [leftGradientColor, rightGradientColor]), startPoint: .leading, endPoint: .trailing)
                .ignoresSafeArea(.all, edges: .all)
            
            // Background Container
            VStack() {
                Spacer()
                
                RoundedRectangle(cornerRadius: 40)
                    .fill(contentBackground)
                    .frame(
                        width:
                            UIScreen.main.bounds.width,
                        height: UIScreen.main.bounds.height-revealedGradientHeight)
                
            }
            .ignoresSafeArea(.all)
                
            }
            
        } //: ZSTACK
}

struct LayeredBackground_Previews: PreviewProvider {
    static var previews: some View {
        LayeredBackground(contentBackground: Color.white)
    }
}
