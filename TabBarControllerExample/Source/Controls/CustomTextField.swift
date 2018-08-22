//
//  CustomTextField.swift
//  UIKitDemo
//
//  Created by Lacy Rhoades on 8/22/18.
//  Copyright © 2018 Lacy Rhoades. All rights reserved.
//

import UIKit

@IBDesignable class CustomTextField: XibView {
    @IBOutlet var borderView: UIView?
    override func loadNib() {
        super.loadNib()
        
        self.borderView?.layer.borderColor = UIColor.gray.cgColor
        self.borderView?.layer.borderWidth = 4
        self.borderView?.layer.cornerRadius = 12
    }
}
