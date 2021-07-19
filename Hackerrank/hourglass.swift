//
//  hourglass.swift
//  Hackerrank
//
//  Created by Juan Andres Vasquez Ferrer on 19-07-21.
//

import Foundation

//https://www.hackerrank.com/challenges/2d-array/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=arrays


func hourglassSum(arr: [[Int]]) -> Int {
    // Write your code here
    var maxSum = Int.min
    for i in 0..<arr.count {
        for j in 0..<arr[i].count {
            if hourglassValid(i: i, j: j) {
                let sum = calculateHourglass(i: i, j: j, arr: arr)
                if sum > maxSum {
                    maxSum = sum
                }
            }
        }
    }
    return maxSum
}

func hourglassValid(i: Int, j: Int) -> Bool {
    return i - 1 >= 0 && i + 1 < 6 &&
           j - 1 >= 0 && j + 1 < 6
}

func calculateHourglass(i: Int, j: Int, arr: [[Int]]) -> Int {
    return  arr[i][j] +
            arr[i - 1][j] +
            arr[i - 1][j - 1] +
            arr[i - 1][j + 1] +
            arr[i + 1][j - 1] +
            arr[i + 1][j] +
            arr[i + 1][j + 1]
}
