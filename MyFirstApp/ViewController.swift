//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Phùng Hoàng Bắc on 9/20/14.
//  Copyright (c) 2014 Phùng Hoàng Bắc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func handleTweetButtonTapped(sender: UIButton) {
        println("Ket noi thanh cong")
    }
}

