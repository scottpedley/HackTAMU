//
//  CircleGraph.swift
//  HackTAMU
//
//  Created by Amy Hong on 1/28/23.
//

import SwiftUI

struct CircleGraph: View {
    
    // MARK: PROPERTY
    @State private var category: String = ""
    @State private var value: Double = 0.0
    
   //var Bata = data
    
      var total: Double {
          return findTotalValue(data)
      }
      
    // MARK: BODY
      var body: some View {
          
          let bond = findTotalValueForCategory(category: "bond")/total
          let stock = findTotalValueForCategory(category: "stock")/total
          let index = findTotalValueForCategory(category: "index")/total
          let crypto = findTotalValueForCategory(category: "crypto")/total
          
          let strokeWidth: CGFloat = 50
          let circleSize: CGFloat = 240
          let gapSize: CGFloat = 0.01
          ZStack {
              VStack {
                  /*
                  // Add to chart
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
                   */
                  HStack {
                      Text("Total Portfolio")
                          .padding(.leading, 20)
                      Spacer()
                      Text("\(String(format: "$%.2f", total))")
                          .padding(.trailing, 20)
                  }
                  .foregroundColor(Color(.gray))
                  .padding(.bottom, 40)

              
              ZStack {
                  Circle()
                      .stroke(Color.white, lineWidth: strokeWidth)
                      .frame(width: circleSize, height: circleSize)
                      
                  
                  Circle()
                      .trim(from: 0.0, to: bond-gapSize)
                      .stroke(Color.red, lineWidth: strokeWidth)
                      .frame(width: circleSize, height: circleSize)
                  
                  Circle()
                      .trim(from: bond, to: bond+stock-gapSize)
                      .stroke(Color.blue, lineWidth: strokeWidth)
                      .frame(width: circleSize, height: circleSize)
                  
                  Circle()
                      .trim(from: bond+stock, to: bond+stock+index-gapSize)
                      .stroke(Color.green, lineWidth: strokeWidth)
                      .frame(width: circleSize, height: circleSize)
                  
                  Circle()
                      .trim(from: bond+stock+index, to: bond+stock+index+crypto-gapSize)
                      .stroke(Color.yellow, lineWidth: strokeWidth)
                      .frame(width: circleSize, height: circleSize)
                  
                } //: CIRCLE GRAPH ZSTACK
              } //: VSTACK
          }
       
      }
      
    // MARK: TOTAL VALUE
    func findTotalValue(_ data: [DataStructure]) -> Double {
        var totalValue: Double = 0

        for item in data {
            totalValue += item.value
        }
        return totalValue
    }
    
    // MARK: CATAGORY TOTAL
    func findTotalValueForCategory(category: String) -> Double {
           return data.filter({$0.category == category}).reduce(0, {$0 + $1.value})
    }
      
}

// MARK: PREVIEW
struct CircleGraph_Previews: PreviewProvider {
    static var previews: some View {
        CircleGraph()
    }
}
