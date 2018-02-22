//
//  BViewController.swift
//  HW1_WebView
//
//  Created by jameskrauser on 2018/2/21.
//  Copyright © 2018年 jameskrauser. All rights reserved.
//

import UIKit

class BViewController: UIViewController {
    
    @IBOutlet weak var mywebview2: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
    
        if let url = URL(string:companyurl[myindex]) {
            
            let request = URLRequest(url:url )
            mywebview2.loadRequest(request)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
