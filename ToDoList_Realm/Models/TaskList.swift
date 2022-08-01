//
//  TaskList.swift
//  ToDoList_Realm
//
//  Created by Felix Titov on 8/1/22.
//  Copyright © 2022 by Felix Titov. All rights reserved.
//  


import RealmSwift

class TaskList: Object {
    @objc dynamic var name = ""
    @objc dynamic var date = Date()
    let tasks = List<Task>()
}

class Task: Object {
    @objc dynamic var name = ""
    @objc dynamic var note = ""
    @objc dynamic var date = Date()
    @objc dynamic var isCompleted = false
}
