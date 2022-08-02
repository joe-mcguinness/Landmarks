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
    
    func toggleFavoriteButton() {
        app.scrollViews.otherElements.buttons["Toggle Favorite"].tap()
    }
    
    func tapBackButton() {
        
    }
    
    func titleIsDisplayedCorrectly(title: String) -> Bool {
        return false
    }
    
    func addressIsDisplayedCorrectly(address: String) -> Bool {
        return false
    }
    
    func bodyTextIsDisplayed() -> Bool {
        return false
    }
    
    func mapViewIsDisplayed() -> Bool {
        return false
    }
    
    func heroImageIsDisplayed() -> Bool {
        return false
    }
    
    func pageTitleIsDisplayedCorrectly(title: String) -> Bool {
        return false
    }
    
    func scrollContent() {
        
    }

}
