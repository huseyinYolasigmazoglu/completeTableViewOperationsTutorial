//
//  ViewControllerWitCustomTableViewCell.swift
//  TableView_Simple
//
//  Created by Huseyin Yolasigmazoglu on 24.10.2020.
//  Copyright © 2020 Huseyin Yolasigmazoglu. All rights reserved.
//

import UIKit

class ViewControllerWitCustomTableViewCell: UIViewController,UITableViewDataSource,UITableViewDelegate{
    
    
    // select TableView  Attribute inspector , increase Protype Cell from 0 to 1 and name it CustomCell
    

    
    
    var numbers = [0,1,2,3,4,5]
    
    
    @IBOutlet weak var tableViewCustom: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()


        
        tableViewCustom.dataSource = self
        tableViewCustom.delegate =  self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         
        return numbers.count;
     }
     
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath)
        
        /*
        var cell = UITableViewCell()
        cell.textLabel?.text = String(numbers[indexPath.row])
        */
        
        
        
        cell.textLabel?.text = String(numbers[indexPath.row])
        
        
        return cell
     }
    



}
