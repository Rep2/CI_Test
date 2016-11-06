import Foundation
import XCTest
import Unbox
@testable import CITest
import TweetFeedModels

class CITestUnitTest: XCTestCase {

    func test_toJSON() {
        let model = Model(name: "test", size: Size(width: 10, height: 10))

        let json = model.toJSONDict()

        XCTAssert(json["name"] as? String == "test")
        XCTAssert(json["size"] as? Size == Size(width: 10, height: 10))
    }

    func test_fromJSON() {
        let json: [String : Any] = [
            "name" : "test" as Any,
            "size" : ["width" : 10, "height" : 10] as Any
        ]

        do {
            let model: Model = try unbox(data: JSONSerialization.data(withJSONObject: json, options: .prettyPrinted))

            XCTAssert(model.name == "test")
            XCTAssert(model.size == Size(width: 10, height: 10))
        } catch {
            XCTAssertFalse(true)
        }
    }

}
