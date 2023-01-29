//
//  SwiftUIView.swift
//  circlegraph
//
//  Created by Scott Pedley on 1/28/23.
//

import SwiftUI
import Combine
struct IndexAdd: View {
    @State private var number: String = ""
    var body: some View {
        VStack{
            
            HStack {
                
                Text("Stock Addition")
                    .font(.largeTitle)
                    .multilineTextAlignment(.leading)
                
                .bold()
                .padding()
                
                Spacer()
            }
            ZStack{
            TextField("Enter a number", text: $number)
                
                .keyboardType(.numberPad)
                .onReceive(Just(number)) { newValue in
                    if let _ = Double(newValue) {
                        self.number = newValue
                    } else {
                        self.number = ""
                    }
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
}

struct IndexAdd_Previews: PreviewProvider {
    static var previews: some View {
        IndexAdd()
    }
}
