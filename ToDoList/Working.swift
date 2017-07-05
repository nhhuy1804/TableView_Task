//
//  Working.swift
//  ToDoList
//
//  Created by Cntt35 on 7/5/17.
//  Copyright © 2017 Nhom5. All rights reserved.
//

import Foundation

class Working {
    var name: String
    var listToDo: [String]
    
    init(name: String, listToDo: [String]) {
        self.name = name
        self.listToDo = listToDo
    }
    
    class func section1() -> Working{
        return Working(name: "Priority 1", listToDo: ["Task 1", "Task 2"])
    }
    
    class func section2() -> Working{
        return Working(name: "Priority 2", listToDo: ["Task 3", "Task 4", "Task 5"])
    }
    
    class func getList() -> [Working]{
        return [self.section1(), self.section2()]
    }
}

