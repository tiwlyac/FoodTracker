//
//  MealSnapShotTest.swift
//  FoodTrackerTests
//
//  Created by Anun Chaichomphoo on 10/7/2561 BE.
//  Copyright © 2561 KBTG. All rights reserved.
//

import XCTest
import FBSnapshotTestCase
@testable import FoodTracker

class MealSnapShotTest: FBSnapshotTestCase {
    
    override func setUp() {
        super.setUp()
        recordMode = false
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    func test_size() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        [Device.phone4inch,Device.phone5_8inch].forEach { (device) in
            let vc = storyboard.instantiateViewController(withIdentifier: "MealViewController")
            let (parant, _) = traitControllers(device: device, orientation: Orientation.portrait, child: vc)
            FBSnapshotVerifyView(parant.view, identifier: "\(device)")
        }
        
    }
}
