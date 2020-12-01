//
//  ViewControllerTableView.swift
//  TableView_Simple
//
//  Created by Huseyin Yolasigmazoglu on 24.10.2020.
//  Copyright © 2020 Huseyin Yolasigmazoglu. All rights reserved.
//

import UIKit

class ViewControllerTableView: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    //Normal viewController , not a tableViewController .
    //Drag an Tableview and declare an IBOutlet of it called tableViewCustom
    // viewDidLoad tableViewCustom.delegate = self , tableViewCustom.dataSource = self
   
    
    var numbers = [0,1,2,3,4]
    
    @IBOutlet weak var tableViewCustom: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewCustom.delegate = self
        tableViewCustom.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        numbers.count
        
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            let cell = UITableViewCell()
                  cell.textLabel?.text = String(numbers[indexPath.row])
                  
            return cell
        
       }
    
    

}
