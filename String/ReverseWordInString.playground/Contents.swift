/*
 Reverse Words in a String
 Problem Statement: Given a string s, reverse the words of the string.

 Time Complexity: O(N)
 Space Complexity: O(1)
 */

func reverseWordInString(_ str: String) -> String{
    var temp = ""
    var ans = ""
    
    for ch in str {
        // print(ch)
        if (ch != " ") {
                    temp = temp + String(ch)
                } else if (ch == " ") {
                    if (ans != "") {
                        ans = temp + " " + ans
                    }
                    else {
                        ans = temp
                    }
                    temp = ""
                }
    }
    
    // add last word from the temp
    if (temp != "") {
        if (ans != "") {
             ans = temp + " " + ans
        }
        else {
            ans = temp
        }
    }
   return ans
}

let reverseName = reverseWordInString("Dheeraj Singh Rathore")

