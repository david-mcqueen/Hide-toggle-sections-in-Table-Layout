//
//  SettingsViewController.swift
//  testTableLayout
//
//  Created by DavidMcQueen on 06/01/2015.
//  Copyright (c) 2015 David McQueen. All rights reserved.
//

import UIKit

class SettingsTableViewController: UITableViewController, UITableViewDelegate {
    
    
    @IBOutlet var Switch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    //The switch has been toggled
    @IBAction func toggle(sender: AnyObject) {
        //Reload all of the table data
        self.tableView.reloadData();
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if(section == 1 && Switch.on){
            //Set the header & footer heights to 0
            self.tableView.sectionHeaderHeight = 0;
            return 0;
        } else if(section == 2 && !Switch.on){
            //Set the header & footer heights to 0
            self.tableView.sectionHeaderHeight = 0;
            return 0;
        } else {
            return super.tableView(tableView, heightForHeaderInSection: section);
        }  //keeps inalterate all other Header
    }
    
    override func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        if(section == 1 && Switch.on){
            //Set the header & footer heights to 0
            self.tableView.sectionFooterHeight = 0;
            return 0;
        } else if(section == 2 && !Switch.on) {
            //Set the header & footer heights to 0
            self.tableView.sectionFooterHeight = 0;
            return 0;
        } else {
            return super.tableView(tableView, heightForFooterInSection: section)
        }
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(section == 1 || section == 2) //Index number of interested section
        {
            if(Switch.on && section == 1){
                return 0;
            } else if(!Switch.on && section == 2){
                return 0;
            } else{
                return 3; //The number of rows in the section
            }
            
        }else{
            return super.tableView(tableView, numberOfRowsInSection: section)
        }
    }
    
}
