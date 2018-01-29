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
    var label2:UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Label
        var label = UILabel()
        label.frame = CGRect.init(x: 150, y: 150, width: 60, height: 60)
        label.text = "0"
        
        self.view.addSubview(label)
        self.label = label
        
        // label2
        var label2 = UILabel()
        label2.frame = CGRect.init(x: 200, y: 150, width: 60, height: 60)
        label2.text = "0"
        
        self.view.addSubview(label2)
        self.label2 = label2
        
        // Button
        var button = UIButton()
        button.frame = CGRect.init(x: 150, y: 250, width: 60, height: 60)
        button.setTitle("Increase", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        self.view.addSubview(button)
        
        button.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControlEvents.touchUpInside)
        button.addTarget(self, action: #selector(ViewController.ToggleBackgroundColor), for: UIControlEvents.touchUpInside)
        
        // Button2
        var button2 = UIButton()
        button2.frame = CGRect.init(x: 150, y: 300, width: 60, height: 60)
        button2.setTitle("Decrease", for: .normal)
        button2.setTitleColor(UIColor.red, for: .normal)
        self.view.addSubview(button2)
        
        button2.addTarget(self, action: #selector(ViewController.decrementCount), for: UIControlEvents.touchUpInside)
        button2.addTarget(self, action: #selector(ViewController.ToggleBackgroundColor), for: UIControlEvents.touchUpInside)
        
    }
    
    @objc func ToggleBackgroundColor() {
        let color1 = UIColor.lightGray
        let color2 = UIColor.darkGray
        if self.view.backgroundColor == color1 {
            self.view.backgroundColor = color2
        }
        else {
            self.view.backgroundColor = color1
        }
    }
    
    @objc func incrementCount() {
        self.count = self.count + 1
        self.label.text = "\(self.count)"
        self.label2.text = "\(self.count)"
    }
    
    @objc func decrementCount() {
        self.count = self.count - 1
        self.label.text = "\(self.count)"
        self.label2.text = "\(self.count)"
    }
    

}

