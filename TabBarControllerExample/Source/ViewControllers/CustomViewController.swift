//
//  CustomViewController.swift
//  UIKitDemo
//
//  Created by Lacy Rhoades on 8/16/18.
//  Copyright © 2018 Lacy Rhoades. All rights reserved.
//

import UIKit

class CustomViewController: UIViewController {
    @IBOutlet var label: UILabel?
    @IBOutlet var dateLabel: UILabel?
    @IBOutlet var textField: CustomTextField?
    
    init() {
        // This is all of our customizations in one place
        // Called if we create the ViewController by saying just `CustomViewController()`
        // No storyboard/XIB/XML involved in this path
        
        super.init(nibName: nil, bundle: nil)
        
        let label = UILabel()
        self.label = label
        
        let dateLabel = UILabel()
        self.dateLabel = dateLabel
        
        let textField = CustomTextField()
        self.textField = textField
        
        self.view.backgroundColor = .red
        
        label.text = "This is CustomViewController.swift"
        label.textColor = .white
        label.textAlignment = .center
        
        dateLabel.textColor = .white
        dateLabel.textAlignment = .center
        
        let stack = UIStackView(arrangedSubviews: [label, textField, dateLabel])
        stack.axis = .vertical
        stack.distribution = .fillEqually
        
        stack.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(stack)
        
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: stack, attribute: .topMargin, relatedBy: .equal, toItem: self.view, attribute: .topMargin, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: stack, attribute: .bottomMargin, relatedBy: .equal, toItem: self.view, attribute: .bottomMargin, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: stack, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: stack, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1, constant: 0)
            ])
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        // This is an early point of customization if the controller is loaded from an .xib file
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        // This is an early point of customization if the controller is loaded from a .storyboard file
    }
    
    override func viewDidLoad() {
        // This is a later point of customization, no matter how we got here
        // This method always gets called
        // Works for .storyboard files, .xib files and for creating controllers in code

        let now = Context.date()
        self.dateLabel?.text = "Current Date: \(now)"
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}
