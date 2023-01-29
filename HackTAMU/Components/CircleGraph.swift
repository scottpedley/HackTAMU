//
//  CircleGraph.swift
//  HackTAMU
//
//  Created by Amy Hong on 1/28/23.
//

import SwiftUI

struct CircleGraph: View {
    
    
    @State private var category: String = ""
    @State private var value: Double = 0.0
    
    @State var data = [
          DataStructure(category: "bond", value: 100),
          DataStructure(category: "stock", value: 50),
          DataStructure(category: "stock", value: 50),
          DataStructure(category: "stock", value: 50),
          DataStructure(category: "stock", value: 50),
          DataStructure(category: "stock", value: 50),
          DataStructure(category: "bond", value: 100),
          DataStructure(category: "index", value: 50),
          DataStructure(category: "crypto", value: 0),
          DataStructure(category: "crypto", value: 200),
          DataStructure(category: "stock", value: 500),
          
      ]
    
      var total: Double {
          return findTotalValue(data)
      }
      
      var body: some View {
          
          let bond = findTotalValueForCategory(category: "bond")/total
          let stock = findTotalValueForCategory(category: "stock")/total
          let index = findTotalValueForCategory(category: "index")/total
          let crypto = findTotalValueForCategory(category: "crypto")/total
          
          ZStack {
              VStack {
                  VStack{
                      TextField("Category", text: $category)
                      Stepper(value: $value, in: 0...100) {
                          Text("Value: \(value)")
                      }
                      Button(action: {
                          self.data.append(DataStructure(category: self.category, value: self.value))
                      }) {
                          Text("Add Data")
                      }
                  }
                  .padding()
                  
              
              ZStack {
                  Circle()
                      .stroke(Color.white, lineWidth: 20)
                      .frame(width: 300, height: 300)
                  
                  Circle()
                      .trim(from: 0.0, to: bond)
                      .stroke(Color.red, lineWidth: 30)
                      .frame(width: 300, height: 300)
                  
                  Circle()
                      .trim(from: bond, to: bond+stock)
                      .stroke(Color.blue, lineWidth: 30)
                      .frame(width: 300, height: 300)
                  
                  Circle()
                      .trim(from: bond+stock, to: bond+stock+index)
                      .stroke(Color.green, lineWidth: 30)
                      .frame(width: 300, height: 300)
                  
                  Circle()
                      .trim(from: bond+stock+index, to: bond+stock+index+crypto)
                      .stroke(Color.yellow, lineWidth: 30)
                      .frame(width: 300, height: 300)
                  
                  Text("Total Value: \(String(format: "%.2f", total))")
                } //: CIRCLE GRAPH ZSTACK
              } //: VSTACK
          }
          //.padding()
       
      }
      
    func findTotalValue(_ data: [DataStructure]) -> Double {
        var totalValue: Double = 0

        for item in data {
            totalValue += item.value
        }
        return totalValue
    }
    func findTotalValueForCategory(category: String) -> Double {
           return data.filter({$0.category == category}).reduce(0, {$0 + $1.value})
    }
      
}

struct CircleGraph_Previews: PreviewProvider {
    static var previews: some View {
        CircleGraph()
    }
}
