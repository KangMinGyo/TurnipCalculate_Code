//
//  Turnip.swift
//  TurnipCalculate_Code
//
//  Created by KangMingyo on 2022/09/17.
//

import Foundation

struct Turnip: Codable {
    let filters: [Int]
    let minWeekValue: Int
    let minMaxPattern: [[Int]]
    let avgPattern: [Int]
}
