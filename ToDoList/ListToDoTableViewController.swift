//
//  ListToDoTableViewController.swift
//  ToDoList
//
//  Created by Cntt35 on 7/5/17.
//  Copyright © 2017 Nhom5. All rights reserved.
//

import UIKit

class ListToDoTableViewController: UITableViewController {
    
    var listToDo: [Working] = Working.getList()

    override func numberOfSections(in tableView: UITableView) -> Int {
        return listToDo.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listToDo[section].listToDo.count
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return listToDo[section].name
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let section = indexPath.section
        let toDo = listToDo[section].listToDo[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! ListToDoCell

        cell.configure(name: toDo)

        return cell
    }
}
