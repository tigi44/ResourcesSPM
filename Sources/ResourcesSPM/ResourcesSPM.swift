import Foundation
import UIKit

public extension UIColor {
    @available(iOS 11.0, *)
    static let customColor: UIColor? = UIColor(named: "CustomColor", in: .module, compatibleWith: nil)
}

public class JsonFile {
    static func read() -> Any? {
        if let path = Bundle.module.path(forResource: "jsonFile", ofType: "json") {
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
