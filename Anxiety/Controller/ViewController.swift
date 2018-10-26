//
//  ViewController.swift
//  Anxiety
//
//  Created by Joel Menezes Hamon on 19/10/2018.
//  Copyright © 2018 Joel Menezes Hamon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var MainCenaImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        MainCenaImageView.isAccessibilityElement = true
        
    }


}

