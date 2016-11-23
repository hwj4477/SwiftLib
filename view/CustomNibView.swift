//
//  MainTabContentView.swift
//
//  Created by wjhong on 2016. 7. 28..
//  Copyright © 2016년 wjhong. All rights reserved.
//

import UIKit

class CustomNibView: UIView {

    var nibName = "nibName"
    
    var view: UIView!

    init(frame: CGRect, nibName: String? = nil) {
        super.init(frame: frame)
        
        if let nib = nibName {
        
            self.nibName = nib
        }
        else {
            
            self.nibName = NSStringFromClass(type(of: self)).components(separatedBy: ".").last!
        }
        
        setup()
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        setup()
    }
    
    internal func setup() {
        
        view = loadViewFromNib()
        view.frame = bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        addSubview(view)
    }
    
    internal func loadViewFromNib() -> UIView {
        
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: nibName, bundle: bundle)
        return nib.instantiate(withOwner: self, options: nil)[0] as! UIView
    }
}
