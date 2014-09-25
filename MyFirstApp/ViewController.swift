//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Phùng Hoàng Bắc on 9/20/14.
//  Copyright (c) 2014 Phùng Hoàng Bắc. All rights reserved.
//

import UIKit
import Social

class ViewController: UIViewController {
                            
    @IBOutlet weak var twitterWebview: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func handleTweetButtonTapped(sender: UIButton) {
        if SLComposeViewController.isAvailableForServiceType(SLServiceTypeTwitter) {
            let tweetVC = SLComposeViewController (forServiceType: SLServiceTypeTwitter)
            tweetVC.setInitialText(
            "I just finished the first project in ios 8 SDK Development. #prasios8")
            self.presentViewController(tweetVC, animated: true, completion: nil)
        } else {
            println("Can't send tweet")
        }
    }
    
    @IBAction func handleShowMyTweetsTapped(sender: UIButton) {
        let url = NSURL (string: "http://www.twitter.com/pragprog")
        let urlRequest = NSURLRequest (URL: url)
        self.twitterWebview.loadRequest(urlRequest)
    }
}

