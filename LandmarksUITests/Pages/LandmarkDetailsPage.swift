//
//  LandmarkDetailsPage.swift
//  LandmarksUITests
//
//  Created by Joe McGuinness on 02/08/2022.
//

import Foundation

import Foundation
import XCTest

class LandmarkDetailsPage: BasePage {
    
    var app: XCUIApplication
       
    init(xcuiApplication: XCUIApplication) {
       app = xcuiApplication
    }
    
    @discardableResult
    func switchFavoriteButton() -> LandmarkDetailsPage {
        let favouriteStar = app.scrollViews.otherElements.buttons["favouritesStarButton"]
        favouriteStar.waitForExistence(timeout: 5)
        favouriteStar.tap()
        return self
    }
    
    @discardableResult
    func tapBackButton()  -> LandmarksListPage {
        app.buttons["ustwo studios"].tap()
        return LandmarksListPage(xcuiApplication: app)
    }
    
    func titleIsDisplayedCorrectly(title: String) -> Bool {
        return app.scrollViews.otherElements.staticTexts["Malmö"].isHittable
    }
    
    func addressIsDisplayedCorrectly() -> Bool {
        return app.scrollViews.otherElements.staticTexts["address text"].isHittable        
    }
    
    func headerTextIsDisplayed() -> Bool {
        return app.staticTexts["header text"].isHittable
    }
    
    func bodyTextIsDisplayed() -> Bool {
        return app.staticTexts["body text"].isHittable
    }
    
    func mapViewIsDisplayed() -> Bool {
        return app.maps["mapView"].isHittable
    }
    
    func heroImageIsDisplayed() -> Bool {
        return app.images["hero image"].isHittable
    }
    
    func pageTitleIsDisplayedCorrectly(title: String) -> Bool {
        return false
    }
    
    func scrollContent() {
        
    }

}
