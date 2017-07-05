//
//  ListToDoCell.swift
//  ToDoList
//
//  Created by Cntt35 on 7/5/17.
//  Copyright © 2017 Nhom5. All rights reserved.
//

import UIKit

class ListToDoCell: UITableViewCell {
    
    @IBOutlet weak var lblName: UILabel!

    func configure(name: String) {
        self.lblName.text = name
    }
}
