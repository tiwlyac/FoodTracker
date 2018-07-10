//
//  ScreenSize.swift
//  FoodTrackerTests
//
//  Created by Anun Chaichomphoo on 10/7/2561 BE.
//  Copyright © 2561 KBTG. All rights reserved.
//

import Foundation
import CoreGraphics

enum Device {
    case iPhone4
    case iPadMini
    
    enum Orietation {
        case landscape
        case portrait
    }
    
    func size(orietation: Orietation) -> CGRect {
        switch orietation {
        case .landscape:
            return landscapeSize
        case .portrait:
            return portraitSize
        }
    }
    
    var portraitSize : CGRect {
        switch self {
        case .iPhone4:
            return CGRect(x: 0, y: 0, width: 640, height: 960)
        case .iPadMini:
            return CGRect(x: 0, y: 0, width: 1536, height: 2048)
        }
    }
    
    var landscapeSize : CGRect {
        let size = portraitSize
        return CGRect(x: 0, y: 0, width: size.height, height: size.width)
    }
}


