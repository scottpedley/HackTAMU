//
//  data.swift
//  HackTAMU
//
//  Created by Amy Hong on 1/28/23.
//

import Foundation
struct DataStructure: Identifiable {
    let id = UUID()
    let category: String
    let value: Double
    
}


func findTotalValue(_ data: [DataStructure]) -> Double {
    var totalValue: Double = 0

    for item in data {
        totalValue += item.value
    }
    return totalValue
}
