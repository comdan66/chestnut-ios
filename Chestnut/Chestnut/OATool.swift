//
//  PlistTool.swift
//  Chestnut
//
//  Created by 吳政賢 on 2018/6/8.
//  Copyright © 2018年 吳政賢. All rights reserved.
//

import Foundation
import UIKit

class OATool {
    
//    static var plistURL: URL {
//        let documentDirectoryURL =  try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
//        return documentDirectoryURL.appendingPathComponent("dictionary.plist")
//    }
    static func layout (_ view: UIView, _ view1: Any, _ attr1: NSLayoutAttribute, _ relation: NSLayoutRelation, _ view2: Any?, _ attr2: NSLayoutAttribute,_ multiplier: CGFloat, _ c: CGFloat) {
        view.addConstraint(NSLayoutConstraint(item: view1, attribute: attr1, relatedBy: relation, toItem: view2, attribute: attr2, multiplier: multiplier, constant: c))
    }
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
