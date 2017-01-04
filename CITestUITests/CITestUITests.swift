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

        XCUIApplication().launch()
    }

    func test_success() {
        let app = XCUIApplication()

        app.staticTexts["First"].tap()
        app.buttons["Switch"].tap()
        app.staticTexts["Second"].tap()
    }

    func test_failure() {
        let app = XCUIApplication()

        app.staticTexts["First"].tap()
        app.buttons["Switch"].tap()
        app.staticTexts["First"].tap()
    }

}
