//
//  ProgressDialogView.swift
//
//  Created by wjhong on 2016. 4. 5..
//  Copyright © 2016년 wjhong. All rights reserved.
//

/** Usage
 *
 *  ProgressDialogView.sharedInstance.showDialog(onView: self.view)
 *
 *      .
 *      .
 *      .
 *
 *  ProgressDialogView.sharedInstance.dismissDialog()
 *
 */

import UIKit

class ProgressDialogView: UIView {
    
    static let sharedInstance = ProgressDialogView()
    
    var bgView: UIView?
    var indicatorView: UIActivityIndicatorView?
    
    init() {
        
        super.init(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height))
        
        self.backgroundColor = UIColor.clear
        
        initView()
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
    
    func initView() {
        
        bgView = UIView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height))
        bgView?.backgroundColor = UIColor.black
        bgView?.alpha = 0.5
        self.addSubview(bgView!)
        
        indicatorView = UIActivityIndicatorView(activityIndicatorStyle: .whiteLarge)
        indicatorView?.center = self.center
        
        self.addSubview(indicatorView!)
    }
    
    func showDialog(_ onView: UIView) {
        
        dismissDialog()
        
        self.frame = onView.frame
        
        bgView?.frame = self.frame
        
        indicatorView?.center = self.center
        
        indicatorView?.startAnimating()
        
        onView.addSubview(self)
    }
    
    func dismissDialog() {
        
        if self.superview != nil {
            self.removeFromSuperview()
        }
    }
}
