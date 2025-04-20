//
//  View+extension.swift
//  ProductScreenGit
//
//  Created by Кристина on 21.04.2025.
//

import Foundation
import UIKit

extension UIView {
    
    func dropShadow(offset: CGSize) {
        
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = offset
        layer.shadowRadius = 3
        layer.shadowOpacity = 0.1
    }
}
