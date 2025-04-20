//
//  Resources.swift
//  ProductScreenGit
//
//  Created by Кристина on 18.04.2025.
//

import Foundation
import UIKit

struct Resources {
    
    static let screenWidth = UIScreen.main.bounds.width
    
    struct Images {
        
        static let itemImage = UIImage(named: "itemImage")
        static let infoButtonImage = UIImage(named: "infoButton")
        static let newImage = UIImage(named: "newImage")
        
        static let catalogIcon = UIImage(named: "catalogIcon")
        static let basketIcon = UIImage(named: "basketIcon")
        
        static let blazer = UIImage(named: "blazer")
        static let jeans = UIImage(named: "jeans")
        static let pants = UIImage(named: "pants")
        static let tshort = UIImage(named: "tshort")
    }
    
    struct FigmaColors {
        
        static let whiteColor = UIColor(named: "whiteColor")
        static let buyButtonColor = UIColor(named: "buyButtonColor")
        static let borderColor = UIColor(named: "borderColor")
        
        static let titleLabelColor = UIColor(named: "titleLabelColor")
        static let grayLabelColor = UIColor(named: "grayLabelColor")
        static let descriptionColor = UIColor(named: "descriptionColor")
        
        static let sizeEntityColor = UIColor(named: "sizeEntityColor")
        static let sizeEntitySelectColor = UIColor(named: "sizeEntitySelectColor")
        
        static let typeEntitySelectColor = UIColor(named: "typeEntitySelectColor")
        static let typeEntityColor = UIColor(named: "typeEntityColor")
        
        static let secondaryButton = UIColor(named: "secondaryButton")
        static let secondaryButtonTitleBrown = UIColor(named: "StringsecondaryButtonTitleBrown")
    }
    
    struct Alpha {

        static let activeAlpha: CGFloat = 1.0
        static let inactiveAlpha: CGFloat = 0.5
    }

}
