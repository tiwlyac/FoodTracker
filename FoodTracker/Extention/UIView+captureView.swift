//
//  UIView+captureView.swift
//  FoodTracker
//
//  Created by Anun Chaichomphoo on 17/7/2561 BE.
//  Copyright © 2561 KBTG. All rights reserved.
//

import UIKit

extension UIView {

    func captureView() -> UIImage? {
        let renderer = UIGraphicsImageRenderer(bounds: bounds)
        return renderer.image { rendererContext in
            layer.render(in: rendererContext.cgContext)
        }
    }
//    
//    func imageCap() -> UIImage? {
//        UIGraphicsBeginImageContext(bounds.size)
//        defer{
//            UIGraphicsEndImageContext()
//        }
//        guard let context = UIGraphicsGetCurrentContext() else{
//            return nil
//        }
//        layer.render(in: context)
//        let image = UIGraphicsGetImageFromCurrentImageContext()
//        return image
//    }
}
