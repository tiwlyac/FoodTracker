//
//  MealTests.swift
//  FoodTrackerTests
//
//  Created by Anun Chaichomphoo on 21/6/2561 BE.
//  Copyright © 2561 KBTG. All rights reserved.
//

import XCTest
@testable import FoodTracker
class MealTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func  testMealInitializationSucceeds(){
        let zeroRatingMeal = Meal.init(name: "Zero", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingMeal)
        
        let positiveRatingMeal = Meal.init(name: "Positive", photo: nil, rating: 5)
        XCTAssertNotNil(positiveRatingMeal)
    }
    
    func testMealInitializationFails() {
        let negativeRatingMeal = Meal(name: "Negative", photo: nil, rating: -1)
        XCTAssertNil(negativeRatingMeal)
        let largeRatingMeal = Meal(name: "Large", photo: nil, rating: 6)
        XCTAssertNil(largeRatingMeal)
    }
}

