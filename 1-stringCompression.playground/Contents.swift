//: Playground - noun: a place where people can play

import UIKit



//func stringCompressor(myStr: String) -> String {
//    
//    if myStr.characters.count < 2 {
//        return myStr
//    }
//    
//    var resultString = String()
//    var counter = 1
//    var char = myStr.characters.first!
//    
//    for currentChar in myStr.characters {
//       // print(currentChar)
//        if currentChar == char {
//            print(char)
//            counter += 1
//        } else {
//            resultString += "\(char)\(counter)"
//            char = currentChar
//            counter = 1
//        }
//        
//    }
//    
//    
//    
//    
//    
//    return resultString.characters.count >= myStr.characters.count ? resultString : myStr
//}
//
let str = "wwwesddddvv"

func funpress(original: String) -> String {
    let chunks = original.characters.reduce([(Character, Int)]()) { (chunks, char) -> [(Character, Int)] in
        var _chunks = chunks                                        //get a mutable copy
        let count = _chunks.last?.0 == char ? chunks.last!.1 : 0    //get a count if last char is same; 0 otherwise
        if count > 0 {_chunks.removeLast()}                         //remove tuple (makes for more consistent code)
        _chunks.append((char, count + 1))                           //append tuple with incremented count
        return _chunks
    }
    
    return chunks.map{chunk in chunk.1 == 1 ? "\(chunk.0)" : "\(chunk.0)\(chunk.1)"}.reduce("",+)
}

funpress(original: str)








//stringCompressor(myStr: str)

//func compressStr(str: String) -> String {
//    
//    if str.characters.count < 2 {
//        return str
//    }
//    
//    var result: String = ""
//    var char = str.characters.first!
//    var counter: Int = 0
//    
//    for currentChar in str.characters {
//        
//        if currentChar == char {
//            counter += 1
//        } else {
//            result += "\(char)\(counter)"
//
//            char = currentChar
//
//            counter = 1
//
//        }
//    }
//    
//    return result
//}
//
//compressStr(str: str)
