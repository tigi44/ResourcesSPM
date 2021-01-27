import XCTest
@testable import ResourcesSPM

final class ResourcesSPMTests: XCTestCase {
    func testColorAssets() {
        XCTAssertNotNil(UIColor.customColor)
        XCTAssertNil(UIColor(named: "noCustomColor", in: Bundle.main, compatibleWith: nil))
    }
    
    func testJsonFile() {
        let jsonFile = JsonFile.read()
        XCTAssertNotNil(jsonFile)
    }
    
    static var allTests = [
        ("testColorAssets", testColorAssets),
        ("testJsonFile", testJsonFile),
    ]
}
