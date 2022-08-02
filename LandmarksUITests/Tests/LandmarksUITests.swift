//
//  LandmarksUITests.swift
//  LandmarksUITests
//
//  Created by Joe McGuinness on 02/08/2022.
//

import XCTest

class LandmarksUITests: BaseTestClass {

    func testToggleFavourites() {
        let app = XCUIApplication()
        let toggleFavoriteButton = app.scrollViews.otherElements.buttons["Toggle Favorite"]
        toggleFavoriteButton.tap()
        app.navigationBars["New York"].buttons["ustwo studios"].tap()
        app.tables/*@START_MENU_TOKEN@*/.buttons["Malmö"]/*[[".cells[\"Malmö\"].buttons[\"Malmö\"]",".buttons[\"Malmö\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        toggleFavoriteButton.tap()
        app.navigationBars["Malmö"].buttons["ustwo studios"].tap()
    }

    func testFavourite() {
        let app = XCUIApplication()
        app.tables/*@START_MENU_TOKEN@*/.buttons["London"]/*[[".cells[\"London\"].buttons[\"London\"]",".buttons[\"London\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.scrollViews.otherElements.buttons["Toggle Favorite"].tap()
        app.navigationBars["London"].buttons["ustwo studios"].tap()
    }

}
