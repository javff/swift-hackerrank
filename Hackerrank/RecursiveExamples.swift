//
//  RecursiveExamples.swift
//  Hackerrank
//
//  Created by Juan Andres Vasquez Ferrer on 20-08-21.
//

import Foundation



func sum(array: [Int]) -> Int {
    if array.isEmpty { return 0 }
    let firstElement = array.first!
    let nextArray = Array<Int>(array.dropFirst())
    return firstElement + sum(array: nextArray)
}



