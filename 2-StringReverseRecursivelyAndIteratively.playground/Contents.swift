//: Playground - noun: a place where people can play

import UIKit

let str = "Hello, hope you are having a wonderfull day!"


// Reverse iteratively
func reverseString(iteratively myStr: String) -> String {
    var reversedString = ""
    
    for i in 0..<myStr.characters.count {
        
       // print(i)
        
        let currentChar = myStr[myStr.index(myStr.startIndex, offsetBy: i)]
       // print(currentChar)
    
        reversedString = "\(currentChar)\(reversedString)"
    }
    return reversedString
}

print(reverseString(iteratively: str)) // !yad llufrednow a gnivah era uoy epoh ,olleH

//let s = "Swift"
//let i = s.index(s.endIndex, offsetBy: -5)
//print(s[i])

// Reverse recursively

func reverseString(recursively myStr: String) -> String {
    
    var reversedString = ""
    
    if myStr.characters.count > 0 {
        let firstChar = myStr.characters.first!
        let strWithoutFirstChar = myStr[myStr.characters.index(after: myStr.characters.startIndex)..<myStr.characters.endIndex]
        reversedString = "\(reverseString(recursively: strWithoutFirstChar))\(firstChar)"
    }
    return reversedString
}

print(reverseString(recursively: str)) // !yad llufrednow a gnivah era uoy epoh ,olleH





