//
//  main.swift
//  AlgorithmTest
//
//  Created by Choon Shon on 2018. 7. 24..
//  Copyright © 2018년 Choon Shon. All rights reserved.
//

import Foundation


let string1 = "anagram"
let string2 = "naagram"



//Function to get count info for each character
func numberOfAlphaDictionary(for string: String) -> Dictionary<String, UInt>? {
    if string.isEmpty == true {
        return nil
    }
    
    var dic = Dictionary<String, UInt>()
    for char in string1 {
        let key = String(char)
        if let value = dic[key] {
            dic[key] = value + 1
        } else {
            dic[key] = 1
        }
    }
    return dic
}

//Function to see if second string is anagram of first string
func checkAnagram(str : String, dictionary: Dictionary<String, UInt>) -> Bool {
    if str.isEmpty == true {
        return false
    }
    
    var dic  = dictionary //mutableCopy
    for char in str {
        if dic.isEmpty == true {
            return false
        }
        
        let key = String(char)
        if let value  = dic[key], value > 0 {
            if value == 1 {
                dic[key] = nil
            } else {
                dic[key] = value - 1
            }
        } else {
            return false
        }
    }
    return (dic.isEmpty == true)
}

if let dic = numberOfAlphaDictionary(for: string1) {
    let isAnagram = checkAnagram(str: string2, dictionary: dic)
    print(isAnagram)
}




