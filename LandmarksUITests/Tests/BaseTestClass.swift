//
//  BaseTestClass.swift
//  LandmarksUITests
//
//  Created by Joe McGuinness on 02/08/2022.
//

import Foundation
import XCTest

class BaseTestClass: XCTestCase {
    let app = XCUIApplication()

    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        app.launch()
    }
    
    override func tearDown() {
        XCUIApplication().terminate()
        super.tearDown()
    }
}
