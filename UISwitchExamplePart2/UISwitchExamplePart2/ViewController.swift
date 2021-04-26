//
//  ViewController.swift
//  UISwitchExamplePart2
//
//  Created by Aditi Agrawal on 25/04/21.
//

import UIKit

let animationDelay = 0.007

class ViewController: UIViewController {
    
    var index = animationDelay
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func switchValueChanged (sender: UISwitch) {
        let switchButtons:[UISwitch] = self.view.subviews.compactMap{ $0 as? UISwitch }
        index = animationDelay
        for switchButton in switchButtons.sorted(by: { $0.tag < $1.tag })
        {
            Timer.scheduledTimer(withTimeInterval: index, repeats: false) { timer in
                switchButton.setOn(sender.isOn ? true : false, animated: true)
            }
            self.index += animationDelay
        }
    }
}

