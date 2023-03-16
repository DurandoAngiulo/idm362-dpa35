//
//  ViewController.swift
//  idm362-dpa35
//
//  Created by Durando Angiulo on 1/19/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func returnToHome(_ sender: Any) {
       print("success")
        performSegue(withIdentifier: "returnToHome", sender: nil)
    }
    
}

