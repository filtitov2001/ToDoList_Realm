//
//  TaskList.swift
//  ToDoList_Realm
//
//  Created by Felix Titov on 8/1/22.
//  Copyright © 2022 by Felix Titov. All rights reserved.
//  


import RealmSwift

class TaskList: Object {
    @Persisted var name = ""
    @Persisted var date = Date()
    let tasks = List<Task>()
}

class Task: Object {
    @Persisted var name = ""
    @Persisted var note = ""
    @Persisted var date = Date()
    @Persisted var isCompleted = false
}
