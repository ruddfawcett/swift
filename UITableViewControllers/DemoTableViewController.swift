//
//  DemoTableViewController.swift
//  swift
//
//  Created by Rudd Fawcett on 6/2/14.
//  Copyright (c) 2014 Rudd Fawcett. All rights reserved.
//

import UIKit

class DemoTableViewController: UITableViewController {
    init(style: UITableViewStyle) {
        super.init(style: style)
        
        self.title = "TableViewController Demo"
    }
    
    init(nibName nibNameOrNil: String!, bundle nibBundleOrNil: NSBundle!) {
        super.init(nibName: nibName, bundle: nibBundle)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func tableView(tableView: UITableView!, titleForHeaderInSection section: Int) -> String! {
        return "Section \(section)"
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView?) -> Int {
        return 5
    }
    
    override func tableView(_: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "cell")
        
        cell.textLabel.text = "Section: \(indexPath.section), Row: \(indexPath.row)"
        
        return cell
    }
    
    override func tableView(_: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated:true)
        
        let selectedCell = tableView.cellForRowAtIndexPath(indexPath) as UITableViewCell
        
        println(selectedCell.textLabel.text)
    }
}
