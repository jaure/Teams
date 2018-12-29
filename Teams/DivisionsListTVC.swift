//
//  ViewController.swift
//  Teams
//
//  Created by John Ure on 28/12/2018.
//  Copyright © 2018 Soft Touch. All rights reserved.
//

import UIKit

class DivisionsListTVC: UITableViewController {
    
    // MARK: - Properties
    let itemArray = ["Scotland Premier", "England Premier", "Germany Bundesliga 1"]

    
    
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    
    // MARK: - TableView datasource
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "DivisionItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
    
    
    
    // MARK: - TableView delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Row tapped: \(indexPath.row)")
        print("Item selected: \(itemArray[indexPath.row])")
        
        // Set a checkmark when tapped and set to none if it already has a checkmark
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }

} // end class

