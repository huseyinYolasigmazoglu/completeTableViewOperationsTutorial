//
//  ViewControllerAddButtonTop.swift
//  TableView_Simple
//
//  Created by Huseyin Yolasigmazoglu on 24.10.2020.
//  Copyright © 2020 Huseyin Yolasigmazoglu. All rights reserved.
//

import UIKit

class ViewControllerAddButtonTop: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    
    //Purpose of this view to demostrate how to add something to tableView easily.
 
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var buttonAdd: UIButton!
    
    @IBOutlet weak var textField: UITextField!
    
    var numbers = ["0","1","2","3","4"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        numbers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        cell.textLabel?.text = numbers[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            
            numbers.remove(at: indexPath.row)
            
           tableView.reloadData()
        }
    }
    
    @IBAction func AddtoTableView(_ sender: UIButton) {
        
        if let text = textField.text{
            numbers.append(text)
            tableView.reloadData()
            
            DispatchQueue.main.async {
                let indexPath = IndexPath(row: self.numbers.count - 1, section: 0)
            
            //Scroll to below.
            self.tableView.scrollToRow(at: indexPath , at: UITableView.ScrollPosition.bottom, animated: true)
            }
        }
        else{
            print("Emty")
        }
        
    }
    

}
