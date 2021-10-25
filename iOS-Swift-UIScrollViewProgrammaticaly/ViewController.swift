//
//  ViewController.swift
//  iOS-Swift-UIScrollViewProgrammaticaly
//
//  Created by Pooya on 2021-01-01.
//  Copyright © 2021 centurytrail.com. All rights reserved.
//

import UIKit

struct AppSettings {
    static var screenRect:CGRect = UIScreen.main.bounds
    static var screenWidth:CGFloat = screenRect.size.width
    static var screenHeight:CGFloat = screenRect.size.height
    static var keyboardHeight:CGFloat = screenHeight*0.3
}


class ViewController: UIViewController {
    
    var referenceSubView : SubView!
    var keyboardSpaceView = UIView()
    var subView = UIView()
    var subScrollView : UIScrollView!
    var subContentView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        subScrollView = UIScrollView(frame: subView.bounds)
        view.addSubview(subScrollView)
        subScrollView.addSubview(subContentView)
        subContentView.addSubview(subView)
        subContentView.addSubview(keyboardSpaceView)
        subScrollView.backgroundColor = UIColor.clear
        subScrollView.contentSize = CGSize(width: subView.bounds.width, height: subView.bounds.height + AppSettings.keyboardHeight)
        subContentView.centerXAnchor.constraint(equalTo: subScrollView.centerXAnchor).isActive = true
        subContentView.widthAnchor.constraint(equalTo: subScrollView.widthAnchor).isActive = true
        subContentView.topAnchor.constraint(equalTo: subScrollView.topAnchor).isActive = true
        subContentView.bottomAnchor.constraint(equalTo: subScrollView.bottomAnchor).isActive = true

        
        self.referenceSubView = SubView().loadView()
        self.subView.addSubview(referenceSubView)
        self.referenceSubView?.frame = subView.frame
        

        
        subScrollView.frame = CGRect(x: 0, y: 20 , width: AppSettings.screenWidth, height: AppSettings.screenHeight - 20)
        subContentView.frame.size = CGSize(width: subScrollView.frame.width, height: subScrollView.frame.height+AppSettings.keyboardHeight)
        subView.frame.size = subScrollView.frame.size
        subContentView.leadingAnchor.constraint(equalTo: subView.leadingAnchor, constant: 0).isActive = true
        subContentView.trailingAnchor.constraint(equalTo: subView.trailingAnchor, constant: 0).isActive = true
        subContentView.topAnchor.constraint(equalTo: subView.topAnchor, constant: 0).isActive = true
        subView.bottomAnchor.constraint(equalTo: keyboardSpaceView.topAnchor, constant: 0).isActive = true
        keyboardSpaceView.topAnchor.constraint(equalTo: subView.bottomAnchor, constant: 0).isActive = true
        subContentView.bottomAnchor.constraint(equalTo: self.keyboardSpaceView.bottomAnchor, constant: 0).isActive = true
    }

}

