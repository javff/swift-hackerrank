//
//  CountingValles.swift
//  Hackerrank
//
//  Created by Juan Andres Vasquez Ferrer on 16-07-21.
//

import Foundation

//https://www.hackerrank.com/challenges/counting-valleys/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=warmup


func countingValleys(steps: Int, path: String) -> Int {
    // Write your code here
    
    var seaLevel = 0
    var vayes = 0

    path.forEach { (char) in
        
        if char == "D" {
            seaLevel -= 1
        }
        
        if char == "U" {
            seaLevel += 1
        }
        
        if seaLevel == 0 && char == "U" {
            vayes += 1
        }
        
    }
    
    return vayes
}
