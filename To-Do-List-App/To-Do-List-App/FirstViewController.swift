//
//  FirstViewController.swift
//  To-Do-List-App
//
//  Created by Lappy on 7/27/17.
//  Copyright © 2017 xanda code. All rights reserved.
//

import UIKit

var toDoList = ["Create a to do list app", "Turn in the app", "???", "Insert a new item!"]

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var toDoTableView: UITableView!

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (toDoList.count)
    }
  
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "toDoCell")
        cell.textLabel?.text = toDoList[indexPath.row]
        return(cell)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCellEditingStyle.delete {
            toDoList.remove(at: indexPath.row)
            toDoTableView.reloadData()
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        toDoTableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

