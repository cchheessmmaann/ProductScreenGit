//
//  Resources.swift
//  ProductScreenGit
//
//  Created by Кристина on 18.04.2025.
//

import Foundation
import UIKit

struct Resources {
    
    struct Images {
        
        static let itemImage = UIImage(named: "itemImage")
        static let infoButtonImage = UIImage(named: "infoButton")
        static let newImage = UIImage(named: "newImage")
        
        static let catalogIcon = UIImage(named: "catalogIcon")
        static let basketIcon = UIImage(named: "basketIcon")
        
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
        
    }
    
    struct Alpha {

        static let activeAlpha: CGFloat = 1.0
        static let inactiveAlpha: CGFloat = 0.5
    }

}
