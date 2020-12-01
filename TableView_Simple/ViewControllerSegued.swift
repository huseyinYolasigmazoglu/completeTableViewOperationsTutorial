//
//  ViewControllerSegued.swift
//  TableView_Simple
//
//  Created by Huseyin Yolasigmazoglu on 28.10.2020.
//  Copyright © 2020 Huseyin Yolasigmazoglu. All rights reserved.
//

import UIKit

class ViewControllerSegued: UIViewController {

    var text : String =  "default"
    
    @IBOutlet weak var label: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        label.text = text
        
    }
    



}
