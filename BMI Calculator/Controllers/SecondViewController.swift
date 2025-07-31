//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Abdulbaki Salaudeen on 31.7.2025.
//  Copyright © 2025 Abdulbaki Salaudeen. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        
        let label = UILabel()
        label.text = "Hello"
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        view.addSubview(label)
    }
}
