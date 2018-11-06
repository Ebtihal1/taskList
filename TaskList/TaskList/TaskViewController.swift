//
//  TaskViewController.swift
//  IWishlist
//
//  Created by devlpoer on 8/17/18.
//  Copyright © 2018 devlpoer. All rights reserved.
//

import UIKit

class TaskViewController: UIViewController,UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var tableView: UITableView!
    
    var tasks : [Task] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    tasks = makeTask()
        tableView.dataSource = self
        tableView.delegate = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let task = tasks[indexPath.row]
        cell.textLabel?.text = task.name
        return cell
    }
    
    func makeTask() -> [Task] {
        let task1 = Task()
        task1.name = "Go For Shopping "
        task1.important = false
        
        let task2 = Task()
        task2.name = "Buy new phone "
        task2.important = false
        
        return [task1, task2]
    }
    
    @IBAction func plusTapped(_ sender: AnyObject) {
        performSegue(withIdentifier: "addSegue", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextVC = segue.destination as! CreatTaskViewController
        nextVC.previousVC = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
