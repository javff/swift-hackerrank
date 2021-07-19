//
//  jumpingCloud.swift
//  Hackerrank
//
//  Created by Juan Andres Vasquez Ferrer on 16-07-21.
//

import Foundation

//https://www.hackerrank.com/challenges/jumping-on-the-clouds/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=warmup&h_r=next-challenge&h_v=zen


func jumpingOnClouds(c: [Int]) -> Int {
    // Write your code here
    var jumping = 0
    var currentIndex = 0
    
    while(true) {        
        if currentIndex == c.count - 1 {
            return jumping 
        }
                
        if currentIndex + 2 < c.count && c[currentIndex + 2] == 0 {
            currentIndex += 2
            
        } else if currentIndex + 1 < c.count && c[currentIndex + 1] == 0 {
            currentIndex += 1
        }
        
        jumping += 1
        
    }

}
