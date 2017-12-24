//
//  CustomTextField.swift
//  Lyon
//
//  Created by Trevor Rose on 12/21/17.
//  Copyright © 2017 Trevor Rose. All rights reserved.
//

import UIKit

class CustomTextField: UITextField {
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
        }
        
    }

}
