//
//  NewYearChaos.swift
//  Hackerrank
//
//  Created by Juan Andres Vasquez Ferrer on 19-07-21.
//

import Foundation



func minimumBribes(q: [Int]) -> Void {
    // Write your code here

    var bribes = 0
        
    for i in 0..<q.count {
        
        let current = q.count - i - 1
        let passenger = current + 1
        
        if q[current] <= passenger {
            continue
        }
        
        if (current + 2 <= q.count - 1) && q[current] == passenger + 2 {
            bribes += 2
            continue
        }
        if (current + 1 <= q.count - 1) && q[current] == passenger + 1 {
            bribes += 1
            continue
        }
        

        
        print("Too chaotic")
        return
    }
    
    print(bribes)
}
