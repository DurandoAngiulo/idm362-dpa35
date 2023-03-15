//
//  ViewControllerLifePage.swift
//  idm362-dpa35
//
//  Created by Durando Angiulo on 3/15/23.
//

import UIKit

class ViewControllerLifePage: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    var lifeCount:Int = 0

    @IBAction func assigntwentyLife(_ sender: Any) {
        lifeCount = 20
        performSegue(withIdentifier: "gameSegue", sender: nil)
    }
    
    @IBAction func assignfortyLife(_ sender: Any) {
        lifeCount = 40
        performSegue(withIdentifier: "gameSegue", sender: nil)
    }
    
    @IBAction func assignsixtyLife(_ sender: Any) {
        lifeCount = 60
        performSegue(withIdentifier: "gameSegue", sender: nil)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      // Get the new view controller using segue.destination.
      // Pass the selected object to the new view controller.
      if segue.identifier == "gameSegue" {
        let gameObj = segue.destination as! ViewControllerCounter
          gameObj.lifeValue = lifeCount
        
      }
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
