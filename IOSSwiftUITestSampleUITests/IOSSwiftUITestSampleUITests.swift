//
//  IOSSwiftUITestSampleUITests.swift
//  IOSSwiftUITestSampleUITests
//
//  Created by Pooya on 2018-05-28.
//  Copyright © 2018 Pooya. All rights reserved.
//

import XCTest

class IOSSwiftUITestSampleUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        print("UI test")
        
        let app = XCUIApplication()
        
        XCTAssertEqual(app.tables.count, 1)
        XCTAssertEqual(app.buttons.count, 1)
        
        let tabel = app.tables.element(boundBy : 0)
        XCTAssertEqual(tabel.cells.count , 0)
        
        let emptyListTable = app.tables["Empty list"]
        emptyListTable.swipeUp()
        emptyListTable.swipeDown()
        
        let startButton = app.buttons["Start"]
        startButton.tap()
        
        XCTAssertEqual(tabel.cells.count, 15)
        
        
        let tablesQuery = app.tables
        let thisIsRowNo10StaticText = tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["This is row no. 10"]/*[[".cells.staticTexts[\"This is row no. 10\"]",".staticTexts[\"This is row no. 10\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        thisIsRowNo10StaticText.swipeUp()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["This is row no. 5"]/*[[".cells.staticTexts[\"This is row no. 5\"]",".staticTexts[\"This is row no. 5\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.swipeDown()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["This is row no. 7"]/*[[".cells.staticTexts[\"This is row no. 7\"]",".staticTexts[\"This is row no. 7\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        let thisIsRowNo8StaticText = tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["This is row no. 8"]/*[[".cells.staticTexts[\"This is row no. 8\"]",".staticTexts[\"This is row no. 8\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        thisIsRowNo8StaticText.tap()
        thisIsRowNo8StaticText.tap()
        
        let thisIsRowNo9StaticText = tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["This is row no. 9"]/*[[".cells.staticTexts[\"This is row no. 9\"]",".staticTexts[\"This is row no. 9\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        thisIsRowNo9StaticText.tap()
        thisIsRowNo9StaticText.tap()
        thisIsRowNo10StaticText.tap()
        thisIsRowNo10StaticText.tap()
        startButton.tap()

        
        


    }
    
}
