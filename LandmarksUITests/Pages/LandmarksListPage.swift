//
//  LandmarksListPage.swift
//  LandmarksUITests
//
//  Created by Joe McGuinness on 02/08/2022.
//

import Foundation
import XCTest

class LandmarksListPage: BasePage {
    
    var app: XCUIApplication
       
    init(xcuiApplication: XCUIApplication) {
        app = xcuiApplication
    }
    
    func tapLondonStudioCell() -> LandmarkDetailsPage {
        app.tables/*@START_MENU_TOKEN@*/.buttons["London"]/*[[".cells[\"London\"].buttons[\"London\"]",".buttons[\"London\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        return LandmarkDetailsPage(xcuiApplication: app)
    }
    
    func tapMalmoStudioCell() -> LandmarkDetailsPage {
        app.tables.buttons["Malmö"].tap()
        return LandmarkDetailsPage(xcuiApplication: app)
    }

    func tapNewYorkStudioCell() -> LandmarkDetailsPage {
        app.tables.buttons["New York"].tap()
        return LandmarkDetailsPage(xcuiApplication: app)
    }
    
    func toggleFavouritesOnly() {
        app.switches["favouritesToggle"].tap()
    }
    
    func countOfAllStudios() -> Int {
        return app.tables.buttons.count

    }

}
