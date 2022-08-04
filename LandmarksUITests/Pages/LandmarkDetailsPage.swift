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
    func toggleFavoriteButton() -> LandmarkDetailsPage {
        app.scrollViews.otherElements.buttons["Toggle Favorite"].tap()
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
        return app.scrollViews.otherElements.staticTexts["Kärleksgatan 2, 211 45 Malmö, Sweden"].isHittable
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
