//
//  TableViewCellCustom.swift
//  TableView_Simple
//
//  Created by Huseyin Yolasigmazoglu on 25.10.2020.
//  Copyright © 2020 Huseyin Yolasigmazoglu. All rights reserved.
//

import UIKit

class TableViewCellCustom: UITableViewCell {
    
    
    @IBOutlet weak var customLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
