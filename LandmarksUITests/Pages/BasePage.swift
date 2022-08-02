//
//  BasePage.swift
//  LandmarksUITests
//
//  Created by Joe McGuinness on 02/08/2022.
//

import Foundation
import XCTest

class BasePage: XCTest {

var app: XCUIApplication
    
    init(xcuiApplication: XCUIApplication) {
        app = xcuiApplication
    }
}
