//
//  LandmarksUITests.swift
//  LandmarksUITests
//
//  Created by Joe McGuinness on 02/08/2022.
//

import XCTest

class LandmarksUITests: BaseTestClass {
    
    var landmarksListPage: LandmarksListPage!
    var landmarkDetailsPage: LandmarkDetailsPage!
    
    override func setUp() {
           super.setUp()
           landmarksListPage = LandmarksListPage(xcuiApplication: app)
       }

    func testTogglingFavoritesChangesStudioCount() {
        let studioCount = landmarksListPage.countOfAllStudios()
        landmarksListPage
            .tapLondonStudioCell()
            .switchFavoriteButton()
            .tapBackButton()
            .toggleFavouritesOnly()
        XCTAssertLessThan(landmarksListPage.countOfAllStudios(), studioCount)
    }
    
    func testMalmoDetailsPageShowsAllDetails() {
        landmarkDetailsPage = landmarksListPage.tapMalmoStudioCell()
        XCTAssert(landmarkDetailsPage.heroImageIsDisplayed())
        XCTAssert(landmarkDetailsPage.bodyTextIsDisplayed())
        XCTAssert(landmarkDetailsPage.headerTextIsDisplayed())
        XCTAssert(landmarkDetailsPage.titleIsDisplayedCorrectly(title: "Malmö"))
        XCTAssert(landmarkDetailsPage.addressIsDisplayedCorrectly())
    }
}
