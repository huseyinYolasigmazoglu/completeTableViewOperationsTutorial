//
//  ViewControllerTableViewAddBottom.swift
//  TableView_Simple
//
//  Created by Huseyin Yolasigmazoglu on 24.10.2020.
//  Copyright © 2020 Huseyin Yolasigmazoglu. All rights reserved.
//

import UIKit

class ViewControllerTableViewAddBottom: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    //Purpose of this view to demostrate a dynamicly created button at the  bottom , adding values to tableView.
    
    @IBOutlet weak var tablewView: UITableView!
    
    
    var numbers = ["0","1","2","3","4","5"]

    override func viewDidLoad() {
        super.viewDidLoad()

        
        tablewView.delegate = self
        tablewView.dataSource = self
        
        
    }
    
    @objc func buttonAction(sender: UIButton!) {
        
        print("Button tapped")
        numbers.append("XX")
        tablewView.reloadData()
        
        DispatchQueue.main.async {
            let indexPath = IndexPath(row: self.numbers.count , section: 0)
        
        //Asagiya scroll yapiyor.
        self.tablewView.scrollToRow(at: indexPath , at: UITableView.ScrollPosition.bottom, animated: true)
        }
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        numbers.count + 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
  
        let cell = UITableViewCell()
       
        
        if indexPath.row < numbers.count {
            
            cell.textLabel?.text = numbers[indexPath.row]
            
        }
        else{
           
            let button = UIButton(type: .contactAdd)
            
            button.center = cell.center
            button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
              cell.addSubview(button)

        }
        
        
        return cell;
        
    }
    
    

}
