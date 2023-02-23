//
//  ViewControllerCounter.swift
//  idm362-dpa35
//
//  Created by Durando Angiulo on 2/9/23.
//

import UIKit

class ViewControllerCounter: UIViewController {


    @IBOutlet weak var topRightLabel: UILabel!
    @IBOutlet weak var bottomLeftLabel: UILabel!
    @IBOutlet weak var bottomRightLabel: UILabel!
    @IBOutlet weak var topLeftLabel: UILabel!
    
    //global vars
    
    //top left
    var topLeft:Int = 40
    //bottom left
    var bottomLeft:Int = 40
    //top right
    var topRigtht:Int = 40
    //bottom right
    var bottomRigtht:Int = 40
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func decreaseLife(_ sender: Any) {
        topLeft = topLeft-1
        topLeftLabel.text = String(topLeft)
    }
    
    @IBAction func increaseLife(_ sender: Any) {
        topLeft = topLeft+1
        topLeftLabel.text = String(topLeft)
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
