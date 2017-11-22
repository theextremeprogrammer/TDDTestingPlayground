import Foundation
import XCTest
import TestingFrameworksWrapper
import Quick
import Nimble

class TDDTestingSpec: QuickSpec {
    override func spec() {
        describe("using quick and nimble to TDD within a playground") {
            it("runs tests successfully") {
                let number = 12
                expect(number).to(equal(12))
            }
        }
    }
}

TDDTestingSpec.defaultTestSuite.run()
