//
//  leftRotation.swift
//  Hackerrank
//
//  Created by Juan Andres Vasquez Ferrer on 19-07-21.
//

import Foundation

//https://www.hackerrank.com/challenges/ctci-array-left-rotation/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=arrays&h_r=next-challenge&h_v=zen


// No eficiente, probar esta solución en C++ a ver si logra cumplir todos los casos
//func rotLeft(a: [Int], d: Int) -> [Int] {
//    // Write your code here
//    let trueRotate = d % a.count
//    var mutableArray = a
//
//    for _ in 0..<trueRotate {
//        let element = mutableArray.removeFirst()
//        mutableArray.append(element)
//    }
//
//    return mutableArray
//
//}

func rotLeft(a: [Int], d: Int) -> [Int] {
    // Write your code here
    var newArray: [Int] = Array(repeating: 0, count: a.count)
    
    for i in 0..<a.count {
        let rotate = (i + (a.count - d)) % a.count
        newArray[rotate] = a[i]
    }

   return newArray
}


