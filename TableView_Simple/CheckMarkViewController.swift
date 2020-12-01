//
//  ViewControllerDisClosurePopUp.swift
//  TableView_Simple
//
//  Created by Huseyin Yolasigmazoglu on 25.10.2020.
//  Copyright © 2020 Huseyin Yolasigmazoglu. All rights reserved.
//

import UIKit

class CheckMarkViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    //purpose of this view is to show checkmark accessoryTypes
    
    
    var numbers = ["1","2","3","4","5"]
    
    @IBOutlet weak var tableView: UITableView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        numbers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        
        cell.textLabel?.text = numbers[indexPath.row]
        
        cell.accessoryType = .checkmark
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
           
        let cell = self.tableView.cellForRow(at: indexPath)
        
        if cell?.accessoryType == .checkmark {
            cell?.accessoryType = .none
             }else{
            cell?.accessoryType = .checkmark
             }
        
       }
       
     

}

