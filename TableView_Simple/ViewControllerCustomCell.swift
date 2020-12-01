//
//  ViewControllerCustomCell.swift
//  TableView_Simple
//
//  Created by Huseyin Yolasigmazoglu on 25.10.2020.
//  Copyright © 2020 Huseyin Yolasigmazoglu. All rights reserved.
//

import UIKit

class ViewControllerCustomCell: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    //Purpose of this controller to show how to add a custom cell to tableView.
    
    //1) create a Cocoa Class derived from UITableViewCell     and design it.name it TableViewCellCustom
    
    //2) in TableViewCellCustom , name CustomCellXib to Cell identifier from Attribute inspector.
    
    //3) Register it in viewDidLoad with tablewView.register
    
    //4) see the code below.
    
        
    var numbers = ["0","1","2","3","4","5"]
    
    
    @IBOutlet weak var tablewView: UITableView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        tablewView.delegate = self
        tablewView.dataSource = self
        
        tablewView.register(UINib(nibName: "TableViewCellCustom", bundle: nil), forCellReuseIdentifier: "CustomCellXib")
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        numbers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        

        
        //1.this is also possible way.
        /*
        let cell = Bundle.main.loadNibNamed("TableViewCellCustom", owner: self, options: nil)?.first as! TableViewCellCustom
        
        cell.customLabel.text = numbers[indexPath.row]
         */
        
        
        //2.yontem
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCellXib", for: indexPath) as! TableViewCellCustom
        
        cell.customLabel.text = numbers[indexPath.row]
        
 
        return cell
    }
    
}
