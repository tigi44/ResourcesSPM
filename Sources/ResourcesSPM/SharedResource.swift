//
//  File.swift
//  
//
//  Created by tigi KIM on 2021/01/27.
//

import Foundation

public enum SharedResource {
    static public let bundle: Bundle = Bundle.module
    static public let jsonPath: String? = Bundle.module.path(forResource: "jsonFile", ofType: "json")
}
