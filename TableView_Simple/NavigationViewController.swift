//
//  NavigationViewController.swift
//  TableView_Simple
//
//  Created by Huseyin Yolasigmazoglu on 30.11.2020.
//  Copyright © 2020 Huseyin Yolasigmazoglu. All rights reserved.
//

import UIKit

class NavigationViewController: UIViewController,UITableViewDelegate,UITableViewDataSource  {

    //This is a tableview tutorial. You can see all kinds of tableview manupulations in one project.
    
    // You can navigate other tableview from this first tablew view.
    
    //Every row has segue. You can establish a segue by draging view controller to other view controller, you have to give a name to segues. Name of the segues are alsi in sampleCells array.
    
    // in didSelectRowAt , these segues are performed with array names.
    
    @IBOutlet weak var tableViewDelegation: UITableView!
    
    var sampleCells  =
        ["SimpleDelete",
        "UITableViewController",
        "Custom",
        "CustomWithProtypeCell",
        "TwoTableView",
        "AddItem",
        "AddViaBottomButton",
        "CustomCellXib",
        "CheckMark",
        "TableViewtoSegue",
        "TableViewNavigationController"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewDelegation.dataSource =  self
        tableViewDelegation.delegate = self

    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        sampleCells.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
              cell.textLabel?.text = String(sampleCells[indexPath.row])
        
        //this makes an arrow at right.
        cell.accessoryType = UITableViewCell.AccessoryType.disclosureIndicator
        
        return cell
    }

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         
         print("Selected  \(indexPath.row)")
         print(sampleCells[indexPath.row])
        
         performSegue(withIdentifier: sampleCells[indexPath.row], sender: self)
     }
    
   

}
