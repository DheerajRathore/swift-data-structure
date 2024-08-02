/*
 Check if two Strings are anagrams of each other
 Problem Statement: Given two strings, check if two strings are anagrams of each other or not.
 
 Time Complexity: O(n) where n is the length of string
 Space Complexity: O(1)
 */

func isAnagram(a: String, b: String) -> Bool {
    guard a.count == b.count else { return false }
    
    var dic: [Character: Int] = [:]
    
    for char in a.lowercased() {
        dic[char, default: 0] += 1
    }
    
    for char in b.lowercased() {
        dic[char, default: 0] -= 1
    }
    
    for (_, value) in dic {
        if value != 0 { return false }
    }
    
    return true
}

let result = isAnagram(a: "ABC", b: "CBa")
