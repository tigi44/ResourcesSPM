//
//  File.swift
//  
//
//  Created by tigi KIM on 2021/01/27.
//

import Foundation
import UIKit
import ResourcesSPM

public extension UIColor {
    @available(iOS 11.0, *)
    static let externalCustomColor: UIColor? = UIColor(named: "CustomColor", in: SharedResource.bundle, compatibleWith: nil)
}

public class ExternalJsonFile {
    static func read() -> Any? {
        if let path = SharedResource.jsonPath {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: [])
                let jsonResult = try JSONSerialization.jsonObject(with: data, options: [])
                return jsonResult
              } catch {
                return nil
              }
        } else {
            return nil
        }
    }
}
