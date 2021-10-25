//
//  SubView.swift
//  iOS-Swift-UIScrollViewProgrammaticaly
//
//  Created by Pooya on 2021-01-01.
//  Copyright © 2021 centurytrail.com. All rights reserved.
//

import UIKit

class SubView: UIView {


    override init(frame: CGRect) {
        super.init(frame:frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func loadView() -> SubView {
        let thisView = Bundle.main.loadNibNamed("SubView", owner: self, options: nil)?[0] as! SubView
        return thisView
    }
    
    override func awakeFromNib() {
        
        updateThisView()
        
    }
    
    func updateThisView()  {
        self.backgroundColor = UIColor.lightGray
        self.alpha = 0.8
        //TODO : update view
    }
    
}
