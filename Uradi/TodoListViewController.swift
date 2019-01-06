//
//  ViewController.swift
//  Uradi
//
//  Created by Nikola Grujic on 1/6/19.
//  Copyright © 2019 Nikola Grujic. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {
    
    
    let itemArray = ["Pronadji Vuka", "Igraj Monopol", "Kupi toblerone"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(itemArray[indexPath.row])
        
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
            
        } else {
            
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark

        }

    tableView.deselectRow(at: indexPath, animated: true)
    }

}
