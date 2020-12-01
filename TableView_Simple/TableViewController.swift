//
//  TableViewController.swift
//  TableView_Simple
//
//  Created by Huseyin Yolasigmazoglu on 24.10.2020.
//  Copyright © 2020 Huseyin Yolasigmazoglu. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    //This is a simple demonstration UITableViewController.
    
    //1) File -> New CocoaTouch Class,  subclass of UITableViewController name it TableViewController.
    
    //2) from the object tool box , drag an TablewView Controller.  Make the custom class of it   TableViewController, this file
    //3 Name protype Cell , Table View Cell Identifier "Cell"
    
    //4 check th code below.
    

    
    var numbers = [0,1,2,3,4]
    
    override func viewDidLoad() {
        super.viewDidLoad()

 
        //tableView.isEditing = true
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        
        return numbers.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        cell.textLabel?.text = String(numbers[indexPath.row])
        // Configure the cell...

        return cell
    }
    
    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            print(" delete")
            numbers.remove(at: indexPath.row)
            
            tableView.reloadData()
            
            // Delete the row from the data source
            //tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    


}
