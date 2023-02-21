//
//  ViewControllerCounter.swift
//  idm362-dpa35
//
//  Created by Durando Angiulo on 2/9/23.
//

import UIKit

class ViewControllerCounter: UIViewController {

    @IBOutlet weak var buttonCounter: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func testButton(_ sender: Any) {
        print("left test");
    }
    
    @IBAction func testButtonRight(_ sender: Any) {
        print("right test");
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
