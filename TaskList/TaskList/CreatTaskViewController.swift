//
//  CreatTaskViewController.swift
//  IWishlist
//
//  Created by devlpoer on 11/6/18.
//  Copyright © 2018 devlpoer. All rights reserved.
//

import UIKit

class CreatTaskViewController: UIViewController {

    
    
    @IBOutlet weak var taskNameTextField: UITextField!
    
    @IBOutlet weak var importantSwitch: UISwitch!

    
    var previousVC = TaskViewController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let task = Task()
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn

        
        // add new array to prevouse v.c
        previousVC.tasks.append(task)
        previousVC.tableView.reloadData()
       //navigationController?.popViewController(animated: true)
        // Do any additional setup after loading the view.
    }

    @IBAction func addTapped(_ sender: AnyObject) {
    }
    
    

   
        // Dispose of any resources that can be recreated.
    }

