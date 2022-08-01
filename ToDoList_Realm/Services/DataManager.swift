//
//  DataManager.swift
//  ToDoList_Realm
//
//  Created by Felix Titov on 8/1/22.
//  Copyright © 2022 by Felix Titov. All rights reserved.
//  


import Foundation

class DataManager {
    static let shared = DataManager()
    
    private init() {}
    
    func createTempData(_ completion: @escaping() -> Void) {
        if !UserDefaults.standard.bool(forKey: "done") {
            UserDefaults.standard.set(true, forKey: "done")
            
            let shoppingList = TaskList()
            shoppingList.name = "Shopping List"
            
            let moviesList = TaskList(value: ["Movies List", Date(), [["Best film"], ["Best film 2", "Must have", Date(), true]]])
            
            let milk = Task()
            milk.name = "Milk"
            milk.note = "2L"
            
            let bread = Task(value: ["Bread", "", Date(), true])
            let apples = Task(value: ["name": "Apples", "note": "2Kg"])
            
            shoppingList.tasks.append(milk)
            shoppingList.tasks.insert(contentsOf: [bread, apples], at: 1)
            
            DispatchQueue.main.async {
                StorageManager.shared.save([shoppingList, moviesList])
                completion()
            }
        }
    }
}
