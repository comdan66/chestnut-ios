//
//  PlistTool.swift
//  Chestnut
//
//  Created by 吳政賢 on 2018/6/8.
//  Copyright © 2018年 吳政賢. All rights reserved.
//

import Foundation

class OATool {
    
//    static var plistURL: URL {
//        let documentDirectoryURL =  try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
//        return documentDirectoryURL.appendingPathComponent("dictionary.plist")
//    }

    static func getPlist(fileName: String) -> [String:String] {
        
        
        return NSDictionary(contentsOfFile: Bundle.main.path(forResource: "keys", ofType: "plist")!) as! [String: String]
        
//        var plistURL: URL {
//            let documentDirectoryURL =  try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
//            return documentDirectoryURL.appendingPathComponent(fileName + ".plist")
//        }
//
//        let data = Data(contentsOf: documentDirectoryURL.appendingPathComponent(fileName + ".plist"))
//
//        guard let plist = PropertyListSerialization.propertyList(from: data, format: nil) as? [String:String] else {
//            return [String:String]()
//        }
//        return plist
    }
}
