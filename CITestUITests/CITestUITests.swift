//
//  CITestUITests.swift
//  CITestUITests
//
//  Created by Undabot Rep on 06/11/2016.
//  Copyright © 2016 undabot. All rights reserved.
//

import XCTest

class CITestUITests: XCTestCase {

    override func setUp() {
        super.setUp()

        continueAfterFailure = false
        XCUIApplication().launch()
    }

    func testExample() {
        let app = XCUIApplication()

        app.buttons["Switch"].tap()
    }

}
