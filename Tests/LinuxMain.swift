import XCTest

import ResourcesSPMTests

var tests = [XCTestCaseEntry]()
tests += ResourcesSPMTests.allTests()
tests += ExternalTests.allTests()
XCTMain(tests)
