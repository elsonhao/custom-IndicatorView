//
//  ViewController.swift
//  test
//
//  Created by T814 on 2017/9/8.
//  Copyright © 2017年 T814. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var loadingContainer: UIView = UIView()
    var loadingView: UIView = UIView()
    var actInd: UIActivityIndicatorView = UIActivityIndicatorView()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showActivityIndicatory(uiView: self.view)
        
    }
    
    func showActivityIndicatory(uiView: UIView) {
        
        loadingContainer.frame = uiView.frame
        loadingContainer.center = uiView.center
        loadingContainer.backgroundColor = UIColor.clear
        
        
        
        loadingView.frame = CGRect(x: 0, y: 0, width: 80, height: 80)
        loadingView.center = uiView.center
       
        loadingView.backgroundColor = UIColor.lightGray
        
        loadingView.clipsToBounds = true
        loadingView.layer.cornerRadius = 10
        
        
        actInd.frame = CGRect(x: 0, y: 0, width: 40, height: 40);
        actInd.activityIndicatorViewStyle =
            UIActivityIndicatorViewStyle.whiteLarge
        actInd.center = CGPoint(x: loadingView.frame.size.width / 2, y: loadingView.frame.size.height / 2)
        
        loadingView.addSubview(actInd)
        loadingContainer.addSubview(loadingView)
        uiView.addSubview(loadingContainer)
        actInd.startAnimating()
    }
  
    func hideActivityIndicator(uiView: UIView) {
        actInd.stopAnimating()
        loadingContainer.removeFromSuperview()
        
    }



}

