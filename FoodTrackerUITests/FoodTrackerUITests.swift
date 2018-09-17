//
//  FoodTrackerUITests.swift
//  FoodTrackerUITests
//
//  Created by Anun Chaichomphoo on 10/7/2561 BE.
//  Copyright © 2561 KBTG. All rights reserved.
//

import XCTest

class FoodTrackerUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
//    func test_add_delete_meal() {
//        
//        
//        let app = XCUIApplication()
//        let yourMealNavigationBar = app.navigationBars["Your Meal"]
//        yourMealNavigationBar.buttons["Add"].tap()
//        
//        let enterMealNameTextField = app.textFields["Enter meal name"]
//        enterMealNameTextField.tap()
//        enterMealNameTextField.typeText("อาหารกากๆ")
//        enterMealNameTextField.typeText("\r")
//        app.buttons["Set 4 star rating"].tap()
//        app.navigationBars["อาหารกากๆ"].buttons["Save"].tap()
//        yourMealNavigationBar.buttons["Edit"].tap()
//        
//        let tableQuery = app.tables
//        tableQuery.buttons["Delete อาหารกากๆ"].tap()
//        tableQuery.buttons["Delete"].tap()
//        yourMealNavigationBar.buttons["Done"].tap()
//        
//                
//    }
    
}
