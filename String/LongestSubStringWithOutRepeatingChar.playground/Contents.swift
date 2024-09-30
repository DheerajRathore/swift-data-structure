/*
 Length of Longest Substring without any Repeating Character

 Problem Statement: Given a String, find the length of longest substring without any repeating character.
 
 Time Complexity: O( N )

 Space Complexity: O(1)
 
 */


func lengthOfLongestSubstring(_ s: String) -> Int {

 // return maxlength
  guard s.count > 1 else { return s.count }
  var highestCount = 0
  var currentSubstring: [Character] = []
  for char in s {
      if let index = currentSubstring.firstIndex(of: char) {
          currentSubstring.removeFirst(index + 1)
      }
      currentSubstring.append(char)
      highestCount = max(highestCount, currentSubstring.count)
  }
  return highestCount
  }

lengthOfLongestSubstring("abcdabcbb")
