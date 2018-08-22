//
//  NibView.swift
//  UIKitDemo
//
//  Created by Lacy Rhoades on 8/22/18.
//  Copyright © 2018 Lacy Rhoades. All rights reserved.
//

import UIKit

class XibView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.loadNib()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.loadNib()
    }
    
    func loadNib() {
        let type: AnyClass = self.classForCoder
        let nibName = String(describing: type)
        if let nibView = Bundle(for: type).loadNibNamed(nibName, owner: self, options: nil)?.first as? UIView {
            nibView.frame = self.bounds
            nibView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
            self.addSubview(nibView)
        }
    }
}

