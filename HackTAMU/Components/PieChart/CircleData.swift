//
//  data.swift
//  circlegraph
//
//  Created by Scott Pedley on 1/28/23.
//

import Foundation
struct DataStructure: Identifiable {
    let id = UUID()
    let category: String
    let value: Double

}
#if DEBUG
var data = [
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
      DataStructure(category: "stock", value: 500)

  ]
#endif

func findTotalValue( data: [DataStructure]) -> Double {
    var totalValue: Double = 0

    for item in data {
        totalValue += item.value
    }
    return totalValue
}
func findTotalValueForCategory(category: String) -> Double {
       return data.filter({$0.category == category}).reduce(0, {$0 + $1.value})
   }
func AddData(category: String,value: Double){

    data.append(DataStructure(category: category, value: value))
}
/*
    func findTotalValue( data: [DataStructure]) -> Double {
        var totalValue: Double = 0

        for item in data {
            totalValue += item.value
        }
        return totalValue
    }
func Add
*/
