//
//  Extension + UITableViewCell.swift
//  ToDoList_Realm
//
//  Created by Felix Titov on 8/1/22.
//  Copyright © 2022 by Felix Titov. All rights reserved.
//  


import Foundation
import UIKit

extension UITableViewCell {
    func configure(with taskList: TaskList) {
            let currentTasks = taskList.tasks.filter("isCompleted = false")
            var content = defaultContentConfiguration()
            
            content.text = taskList.name
            
            if taskList.tasks.isEmpty {
                content.secondaryText = "0"
                accessoryType = .none
            } else if currentTasks.isEmpty {
                content.secondaryText = nil
                accessoryType = .checkmark
            } else {
                content.secondaryText = "\(currentTasks.count)"
                accessoryType = .none
            }

            contentConfiguration = content
        }

}
