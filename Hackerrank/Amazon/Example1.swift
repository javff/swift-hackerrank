//
//  Example.swift
//  Hackerrank
//
//  Created by Juan vasquez on 16-05-22.
//

import Foundation

//Amazon Prime Video is a subscription video-on-demand
//over-the-top streaming and rental service. At Prime Video,
//the product team is creating a family plan for shared use.
//An Amazon business analyst needs to compute the pairs
//of family login strings as part of an analysis of the family
//plan adoption.
//The analyst has an array of strings, logins, where the
//lengths of all strings are equal. A string can be
//transformed one time by rotating its characters right by
//one step. In other words, change character 'a' to "b', "b' to
//"c' and so on through changing character 'z' to 'a'. Two
//strings logins[I] and logins/I] are called family logins if one
//of them can be transformed into another. As an example,
//strings ("bcd" ,"abc") are family logins because each
//character in "bcd" is one above the characters in "abc"
//The pairs ("abc", "abc"), ("abc" ."acd") are not family logins.
//Find the number of pairs of strings (1, j) which are family
//logins. Note that any pair of strings can be for a login pair
//if the above condition is met.
//Example
//Let the array of strings /ogins = ["bag", "sfe", "cbh", "cbh",
//"red"]. The following are the pairs of family login strings:
//indices (1, 3) that is "bag" and "cbh", after applying the
//above operation to "bag" we obtain the string "ebh"
//• indices (1, 4) that is "bag" and "cbh"
//• indices (2, 5) that is "sfe" and "red"

func rotateToRight(login: String) -> String {
    
    let rotateString = login.map { value -> Character in
        if value == "z" {
            return Character("a")
        }
        let u = UnicodeScalar(value.asciiValue! + 1)
        let final = Character(u)
        return final

    }
    return String(rotateString)
}

func pairsLogins(logins: [String]) -> [(Int, Int)] {

    var storageOriginal: [(String, String, Int)] = []
    var results: [(Int, Int)] = []

    logins.enumerated().forEach { (index, loginString) in
        let original = loginString
        let transformed = rotateToRight(login: original)
        let pairs = storageOriginal.filter { $0.0 == transformed || $0.1 == original }
        storageOriginal.append((original,transformed, index))
        let partialResult = pairs.map { ($0.2 + 1, index + 1) }
        results.append(contentsOf: partialResult)
    }

    return results
}
