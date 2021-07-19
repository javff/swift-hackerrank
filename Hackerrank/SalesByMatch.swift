//
//  SalesByMatch.swift
//  Hackerrank
//
//  Created by Juan Andres Vasquez Ferrer on 16-07-21.
//

import Foundation

//https://www.hackerrank.com/challenges/sock-merchant/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=warmup




func sockMerchant(n: Int, ar: [Int]) -> Int {
    // Write your code here
    var dict: [Int: Int] = [:]
    var result = 0
    
    ar.forEach { (number) in
        let actual = dict[number] ?? 0
        dict[number] = actual + 1
        
        if let previousResult = dict[number], (previousResult % 2) == 0  {
            result += 1
        }
        
    }
    return result
}
