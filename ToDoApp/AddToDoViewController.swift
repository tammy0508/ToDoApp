//
//  AddToDoViewController.swift
//  ToDoApp
//
//  Created by paula on 5/31/20.
//  Copyright © 2020 tamara. All rights reserved.
//

import UIKit

class AddToDoViewController: UIViewController {

    var previousVC = ToDoTableViewController()
    
    @IBOutlet weak var importantSwitch: UISwitch!
    
    @IBOutlet weak var titleTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func addTapped(_ sender: UIButton) {
        let toDo = ToDo()
        
        if let titleText = titleTextField.text {
            toDo.name = titleText
            toDo.important = importantSwitch.isOn
        }
        previousVC.toDos.append(toDo)
        previousVC.tableView.reloadData()
        navigationController?.popViewController(animated: true)
        
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
