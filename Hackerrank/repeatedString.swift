//
//  repeatedString.swift
//  Hackerrank
//
//  Created by Juan Andres Vasquez Ferrer on 18-07-21.
//

import Foundation


//https://www.hackerrank.com/challenges/repeated-string/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=warmup


func repeatedString(s: String, n: Int) -> Int {
    // Write your code here
    let repeatBase = n / s.count
    let untilTail = n % s.count
    let baseA = s.filter {$0 == "a" }.count
    let tail = s.prefix(untilTail).filter {$0 == "a" }.count
    return (baseA * repeatBase) + (tail)
}
