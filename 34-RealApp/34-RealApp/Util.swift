//
//  Util.swift
//  34-RealApp
//
//  Created by MAC on 3.04.2020.
//  Copyright © 2020 cagdaseksi. All rights reserved.
//

import Foundation
import UIKit

class Util {
    
    static var app: Util = {
        return Util()
    }()
    
    func resizeImageWithAspect(image: UIImage,scaledToMaxWidth width:CGFloat,maxHeight height :CGFloat)->UIImage? {
        let oldWidth = image.size.width;
        let oldHeight = image.size.height;

        let scaleFactor = (oldWidth > oldHeight) ? width / oldWidth : height / oldHeight;

        let newHeight = oldHeight * scaleFactor;
        let newWidth = oldWidth * scaleFactor;
        let newSize = CGSize(width: newWidth, height: newHeight)

        UIGraphicsBeginImageContextWithOptions(newSize,false,UIScreen.main.scale);

        image.draw(in: CGRect(x: 0, y: 0, width: newSize.width, height: newSize.height));
        let newImage = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        return newImage
    }
    
}
