//
//  ViewController2TableView.swift
//  TableView_Simple
//
//  Created by Huseyin Yolasigmazoglu on 24.10.2020.
//  Copyright © 2020 Huseyin Yolasigmazoglu. All rights reserved.
//

import UIKit

class ViewController2TableView: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    
    //Purpose of this is demostrate two tables in one view. See the code below.
    
  
    
    @IBOutlet weak var tableview1: UITableView!
    
    
    
    @IBOutlet weak var tableview2: UITableView!
    
    
    var array1 = ["1","2","3","4","5","6","7"]
    
    var array2 = ["A","B","C","D","E","F","G"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()


        tableview1.delegate = self
        tableview1.dataSource = self
        
        tableview2.delegate = self
        tableview2.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if tableView == tableview1 {
            
            return array1.count
        }
        else if tableView == tableview2{
            
            return array2.count
        }
        else {
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = UITableViewCell()
        
        if tableView == tableview1 {
            
            cell.textLabel?.text = array1[indexPath.row]
        }
        else if tableView == tableview2{
            
            cell.textLabel?.text = array2[indexPath.row]
        }
        
        
        
        
        return cell
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
