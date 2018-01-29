//
//  ViewController.swift
//  Click Counter
//
//  Created by I847323 on 1/28/18.
//  Copyright © 2018 Tyler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    var label:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func incrementCount() {
        self.count = self.count + 1
        self.label.text = "\(self.count)"
    }

}

