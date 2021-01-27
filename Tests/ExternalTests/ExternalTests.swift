import XCTest
@testable import External

final class ExternalTests: XCTestCase {
    func testExternalColorAssets() {
        XCTAssertNotNil(UIColor.externalCustomColor)
    }
    
    func testExternalJsonFile() {
        let jsonFile = ExternalJsonFile.read()
        XCTAssertNotNil(jsonFile)
    }
    
    static var allTests = [
        ("testExternalColorAssets", testExternalColorAssets),
        ("testExternalJsonFile", testExternalJsonFile),
    ]
}
