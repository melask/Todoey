//
//  ViewController.swift
//  Todoey
//
//  Created by Konstantinos Melampianakis on 20/02/2019.
//  Copyright © 2019 Konstantinos Melampianakis. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

  let itemArray = ["Find Mike", "Buy Eggs", "Destroy Demogorgon"]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
  }

  //MARK - Tableview Datasource Methods
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return itemArray.count
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
    cell.textLabel?.text = itemArray[indexPath.row]
    
    return cell
  }
  
  //MARK - TableView Delegate Methods
  
  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
      tableView.cellForRow(at: indexPath)?.accessoryType = .none
    } else {
      tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
    }
    tableView.deselectRow(at: indexPath, animated: true)
  }

}

