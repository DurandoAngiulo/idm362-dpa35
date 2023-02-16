//
//  ViewControllerCounter.swift
//  idm362-dpa35
//
//  Created by Durando Angiulo on 2/9/23.
//

import UIKit

class ViewControllerCounter: UIViewController {

    @IBOutlet weak var buttonCounter: UIButton!
//    var leftCounter:String = buttonCounter.currentTitle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addBtnLeft(_ sender: Any) {
//        leftCounter += 1;
//        buttonCounter.setTitle(String(leftCounter), for: .normal)
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
