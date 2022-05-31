//
//  ViewController.swift
//  0502-TableAndPush
//
//  Created by admsup on 2016/5/3.
//  Copyright © 2016年 test. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var table1: UITableView!
    var number1 = ["aaa", "bbb", "ccc"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return number1.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = table1.dequeueReusableCellWithIdentifier("Cell1", forIndexPath: indexPath)
        
        cell.textLabel?.text = number1[indexPath.row]
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!){
        if(segue.identifier == "toSecond"){
            let indexPath = table1.indexPathForSelectedRow
            let Second = segue.destinationViewController as! SecondTableViewController
            
            Second.title2 = number1[indexPath!.row]
        }
    }
}

