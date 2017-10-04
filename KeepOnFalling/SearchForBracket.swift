//
//  SearchForBracket.swift
//  KeepOnFalling
//
//  Created by Admin on 30.09.17.
//  Copyright © 2017 NB. All rights reserved.
//

import UIKit

class SearchForBracket: NSObject {




    func getValidString(stringForParse:String) -> Bool {
        let firstIndex: String.Index = stringForParse.startIndex
        var count = 0
        var array = [Character]()
        for indexZ in 0..<stringForParse.characters.count {
            
            
            if stringForParse[stringForParse.index(firstIndex, offsetBy: indexZ)] == "{" || stringForParse[stringForParse.index(firstIndex, offsetBy: indexZ)] == "[" || stringForParse[stringForParse.index(firstIndex, offsetBy: indexZ)] == "("  {
            array.append(stringForParse[stringForParse.index(firstIndex, offsetBy: indexZ)])
            count += 1
//            print(count)
            }
            
            if stringForParse[stringForParse.index(firstIndex, offsetBy: indexZ)] == "}" {
            if array[count - 1] == "{" {
                array.remove(at: count - 1)
                count -= 1
//            print(count)
                continue
            } else {
                return false
                }
                
        }
            if stringForParse[stringForParse.index(firstIndex, offsetBy: indexZ)] == "]" {
            if array[count - 1] == "[" {
                array.remove(at: count - 1)
                count -= 1
//                print(count)
                continue
            } else {
                return false
            }
        }
            if stringForParse[stringForParse.index(firstIndex, offsetBy: indexZ)] == ")" {
            if array[count - 1] == "(" {
                array.remove(at: count - 1)
                count -= 1
//            print(count)
                continue
            } else {
                return false
                }
            
            }
//            if indexZ == stringForParse.characters.count - 1 {
//              
//                if stringForParse[stringForParse.index(firstIndex, offsetBy: indexZ)] == "(" || stringForParse[stringForParse.index(firstIndex, offsetBy: indexZ)] == "[" || stringForParse[stringForParse.index(firstIndex, offsetBy: indexZ)] == "{" || count != 0 {
//                    print(count)
//                    return false
//                }
//                else {
//                    return true
//                }
//            }
            
    }
        if count == 0 {
            return true
        } else {
            return false
        }
         }
}
 /*else if stringForParse[stringForParse.index(firstIndex, offsetBy: indexZ)] == "["  {
 array.append(stringForParse[stringForParse.index(firstIndex, offsetBy: indexZ)])
 count += 1
 } else if stringForParse[stringForParse.index(firstIndex, offsetBy: indexZ)] == "(" {
 array.append(stringForParse[stringForParse.index(firstIndex, offsetBy: indexZ)])
 count += 1
 } */


