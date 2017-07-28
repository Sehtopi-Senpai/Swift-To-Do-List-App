//
//  SecondViewController.swift
//  To-Do-List-App
//
//  Created by Lappy on 7/27/17.
//  Copyright © 2017 xanda code. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var input: UITextField!
    
    
    @IBAction func addItem(_ sender: AnyObject) {
        if(input.text != ""){
            toDoList.append(input.text!)
            input.text = ""
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "backgroundImage")!)
    }
    @IBOutlet weak var addItem: UIButton!

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

