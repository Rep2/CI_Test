import Foundation
import XCTest
@testable import CITest

class CITestUnitTest: XCTestCase {

    func test_toJSON() {
        let model = Model(name: "test")

        let json = model.toJSONDict()

        XCTAssert(json["name"] as? String == "test2")
    }

    func test_fromJSON() {
        let json: [String : Any] = [
            "name": "test" as Any
        ]

        do {
        //    let model: Model = try unbox(data: JSONSerialization.data(withJSONObject: json, options: .prettyPrinted))

            XCTAssert(true)
        } catch {
            XCTAssertFalse(true)
        }
    }

}
