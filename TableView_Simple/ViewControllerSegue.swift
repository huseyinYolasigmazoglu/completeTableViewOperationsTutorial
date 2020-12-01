//
//  ViewControllerSegue.swift
//  TableView_Simple
//
//  Created by Huseyin Yolasigmazoglu on 28.10.2020.
//  Copyright © 2020 Huseyin Yolasigmazoglu. All rights reserved.
//

import UIKit

class ViewControllerSegue: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    // purpose of this viewcontroller is to demostrate simple segue .
    
    // same file is uset also with navigation controler , select the view Editor-> EmbedIn Navigation Controller.
    
    // this viewController is used by two views.
    
    // from this view to next view , with drag and drop a segue created named tableViewSegue.
    
    // at prepare function below ,  a parameter is passed to new view from this view controller.
    
    var numbers = ["0","1","2","3","4","5"]
    
    @IBOutlet weak var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        numbers.count
    }
    
    
    @IBAction func AddBarButton(_ sender: UIBarButtonItem) {
        
        var textF = UITextField()
        
        let alert = UIAlertController(title: "What's your name?", message: nil, preferredStyle: .alert)
        
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        
        alert.addTextField { (textField) in
            
            textField.placeholder = "Isminiz ?"
            textF = textField
            
        }
        
        alert.addAction(UIAlertAction(title: "Add", style: .default, handler: { (action) in
            
            /*  this is also a way.
            if let name = alert.textFields?.first?.text {
                   print("Your name: \(name)")
               }
            */
            
            print("Your name: \(textF.text!)")
            self.numbers.append(textF.text!)
            
            
            DispatchQueue.main.async {
                self.tableView.reloadData()
                
                
                let indexPath = IndexPath(row: self.numbers.count - 1, section: 0)
                       
                //Asagiya scroll yapiyor.
                self.tableView.scrollToRow(at: indexPath , at: UITableView.ScrollPosition.bottom, animated: true)
            }
            
        }))
        
        
        self.present(alert, animated: true)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        
        cell.textLabel?.text = numbers[indexPath.row]
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
        tableView.delegate = self
        tableView.dataSource = self
        
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print("Selected  \(indexPath.row)")
              print(indexPath.row)
        performSegue(withIdentifier:
            "tableViewSegue", sender: self)
    }
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
        if(segue.identifier == "tableViewSegue"  )
        {
            let des = segue.destination as? ViewControllerSegued
            
            des!.text = String(tableView.indexPathForSelectedRow!.row)
            
            print(des!.text)
            
        }
        
        else if(segue.identifier == "tableViewSegue2"  )
        {
            let des = segue.destination as? ViewControllerSegued
            
            des!.text = String(tableView.indexPathForSelectedRow!.row)
            
            print(des!.text)
            
        }
        
        
    }
    

}
