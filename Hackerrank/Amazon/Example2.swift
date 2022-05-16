//
//  Example2.swift
//  Hackerrank
//
//  Created by Juan vasquez on 16-05-22.
//

import Foundation

//Amazon is developing a string processing library for some
//of its NLP-related use cases. You are tasked with
//developing a service that takes in a string consisting of
//lower case English letters and returns an integer.
//More formally, given a string, we define the frequency
//deviation of a substring as the difference between the
//maximum and the minimum frequencies of the characters
//in the substring. A substring of a string is formed by any
//contiguous segment of the string. For example, given
//"bacccc", the character appearing most frequently is 'c'
//with 4 occurrences. The character that appears the fewest
//times is 'a' with 1 occurrence. The frequency deviation of
//the entire string is 4 -1 = 3.
//Given a string, s, representing the input string, find the
//maximum possible frequency deviation of any substring of
//the string.
//Note: A substring of a string is formed by any contiguous


func calculateFrecuency(s: String) -> Int {
    if s.count == 1 { return 0 }
    var maxChain = 1
    var shortChain = Int.max

    var pivotLargeChain = 1
    var pivot: Character?

    s.forEach { char in
        if let safePivot = pivot {
           // my code //
            if char == safePivot {
                pivotLargeChain += 1
                maxChain = max(maxChain, pivotLargeChain)
            } else {
                shortChain = min(shortChain, pivotLargeChain)
                pivotLargeChain = 1
            }

            pivot = char
        } else {
            pivot = char
        }
    }

    return maxChain - shortChain

}
