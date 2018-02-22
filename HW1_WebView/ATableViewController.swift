//
//  ATableViewController.swift
//  HW1_WebView
//
//  Created by jameskrauser on 2018/2/21.
//  Copyright © 2018年 jameskrauser. All rights reserved.
//

import UIKit

var company = ["apple" , "htc" , "sony"]
var companyurl = ["https://www.apple.com" , "http://www.htc.com/tw/" , "http://www.sony-xperia.com.tw/" ]

var myindex = 0

class ATableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return company.count
    }

 
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
 
 
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.textLabel?.text  = company[indexPath.row]

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myindex = indexPath.row

        performSegue(withIdentifier: "segue", sender: self )
    }
    
    


    

}
