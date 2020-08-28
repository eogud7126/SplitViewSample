//
//  MasterViewController.swift
//  SplitViewSample
//
//  Created by USER on 28/08/2020.
//  Copyright © 2020 USER. All rights reserved.
//

import UIKit

protocol NumberSelectionDelegate: class {
    func numbersSelected(_ newNumber: Number)
}

class MasterViewController: UITableViewController {

    let numbers = [
        Number(name: "One", number: .one),
        Number(name: "Two", number: .two),
        Number(name: "Three", number: .three),
        Number(name: "Four", number: .four),
        Number(name: "Five", number: .five)
    ]
    weak var delegate: NumberSelectionDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return numbers.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let num = numbers[indexPath.row]

        cell.textLabel?.text = num.name
        // Configure the cell...

        return cell
    }
 
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let num = numbers[indexPath.row]
        delegate?.numbersSelected(num)
        if let detailViewController = delegate as? DetailViewController {
            splitViewController?.showDetailViewController(detailViewController, sender: nil)
        }
    }
}

extension DetailViewController: NumberSelectionDelegate {
    func numbersSelected(_ newNumber: Number) {
        numbers = newNumber
    }
}
