//
//  ToDoTableViewController.swift
//  ToDoApp
//
//  Created by paula on 5/31/20.
//  Copyright © 2020 tamara. All rights reserved.
//

import UIKit

class ToDoTableViewController: UITableViewController {
    
    func createToDo() -> [ToDo] {
        let swift = ToDo()
        swift.name = "Learn Swift"
        swift.important = true
        
        let dog = ToDo()
        dog.name = "Walk the Dog"
        
        return [swift, dog]
    }
    
    var toDos : [ToDo] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        toDos = createToDo()
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return toDos.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        // access a single todo
        let toDo = toDos [indexPath.row]
        // change the textLabel of the cell to the value of the toDo.name
        
        if toDo.important {
            cell.textLabel?.text = "👉" + toDo.name
        } else {
           cell.textLabel?.text = toDo.name
        }
        
        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }


}
