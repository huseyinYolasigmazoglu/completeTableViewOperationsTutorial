//
//  ViewController.swift
//  TableView_Simple
//
//  Created by huseyin yolasigmazoglu on 24.10.2020.
//  Copyright © 2020 Huseyin Yolasigmazoglu. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    //This is a simple TableView with delete operation with UIViewController
    
    //1) Drag a tablew view to story board.
    //2) Add protocols UITableViewDelegate,UITableViewDataSource to ViewController
    //3) Drag from tablewView to viewController, this means tablewView's delegate and datasource will be implemented by this clasr.
    
    // Check the code below.
    
    

    
    var numbers:[Int] = [0,1,2,3,4]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print("Selected  \(indexPath.row)")
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return numbers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        cell.textLabel?.text = String(numbers[indexPath.row])
        
        return cell
    }
    
    // Override to support editing the table view.
     func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
       
        if editingStyle == .delete {
            
            print("deneme delete")
            numbers.remove(at: indexPath.row)
            
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
        
     
    }
    
    
    
    

    
  


}

