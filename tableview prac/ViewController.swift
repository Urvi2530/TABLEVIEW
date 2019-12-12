//
//  ViewController.swift
//  tableview prac
//
//  Created by COE-05 on 12/12/19.
//  Copyright © 2019 COE-05. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
   
    var pr = [
        
        ["Name":"Urvi","Class":"ios"],
        ["Name":"Poonam","Class":"ios"],
        ["Name":"Nil","Class":"ios"]
    
    ]
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "Cell" , for: indexPath )
        cell.textLabel?.text = pr[indexPath.row]["Name"]
        cell.detailTextLabel?.text = pr[indexPath.row]["Class"]
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

