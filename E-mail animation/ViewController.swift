//
//  ViewController.swift
//  E-mail animation
//
//  Created by Igor Shelginskiy on 12/11/18.
//  Copyright © 2018 Igor Shelginskiy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emeilTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func submit(_ sender: UIButton) {
        if (emeilTextField.text?.isEmpty)! {
            self.emeilTextField.backgroundColor = UIColor.orange
            UITextField.animate(withDuration: 0.01, delay: 0, options: [.repeat, .autoreverse], animations: {
                self.emeilTextField.transform = CGAffineTransform(rotationAngle: .pi/20)
            }, completion: nil)
        }
    }
}

