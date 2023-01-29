//
//  SwiftUIView.swift
//  circlegraph
//
//  Created by Scott Pedley on 1/28/23.
//

import SwiftUI
import Combine
struct BondAdd: View {
    @State private var type: String = ""
    @State private var number: String = ""
    @State var okk = 0.0
    

    
    var body: some View {
        
        
        VStack{
            
            HStack {
     
            }
            ZStack{
            TextField("Enter a Type", text: $type)
                
                .bold()
                .padding(.leading, 60.0)
                
           
                Rectangle()
                    
                .frame(width:300,height:40)
                .cornerRadius(20)
                .foregroundColor(.blue)
                .opacity(0.5)
                    
                
            }
            HStack{
            Text("Amount")
                .autocapitalization(.none)
                .font(.largeTitle)
                .multilineTextAlignment(.leading)
            
            .bold()
            .padding()
                
                Spacer()
            }
            Spacer()
            ZStack{
                TextField("Enter a number", text: $number)
               
                
            
                    
                    
                    }
            
                Button(action: {
                     AddData(category: type, value: okk)
                   }) {
                     Text("Button")
                   }
                
                    .bold()
                    .padding(.leading, 60.0)
                
                
                Rectangle()
                
                    .frame(width:300,height:40)
                    .cornerRadius(20)
                    .foregroundColor(.blue)
                    .opacity(0.5)
                
               
            }
           
            
             
        }
         
    }
    
  


struct BondAdd_Previews: PreviewProvider {
    static var previews: some View {
        BondAdd()
    }
}
