//
//  ViewController.swift
//  UISwitchExample
//
//  Created by Aditi Agrawal on 25/04/21.
//

import UIKit

class ViewController: UIViewController {
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func switchValueChanged (sender: UISwitch) {
        for button in self.view.subviews {
            if button.tag == 3 {
                let switchButtontest: UISwitch = button as! UISwitch
                switchButtontest.setOn(sender.isOn ? true : false, animated: true)
            }
        }
    }
}

