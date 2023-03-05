//
//  ViewControllerCounterThree.swift
//  idm362-dpa35
//
//  Created by Durando Angiulo on 3/5/23.
//

import UIKit

class ViewControllerCounterThree: UIViewController {
    
    @IBOutlet weak var topLabel: UILabel!
    
    @IBOutlet weak var bottomLeftLabel: UILabel!
    
    @IBOutlet weak var bottomRightLabel: UILabel!
    
    var top:Int = 40
    //bottom left
    var bottomLeft:Int = 40
    //bottom right
    var bottomRight:Int = 40
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func calculateLife(playerNum: Int, lifeCounter: Int){
        switch playerNum {
        case 1:
            top = top+lifeCounter
            topLabel.text = String(top)
        case 2:
            bottomLeft = bottomLeft+lifeCounter
        bottomLeftLabel.text = String(bottomLeft)
        default:
            bottomRight = bottomRight+lifeCounter
            bottomRightLabel.text = String(bottomRight)
        }

            print("calculate life called")

        }
    
    @IBAction func decreaseLifeP1(_ sender: Any) {
        calculateLife(playerNum: 1, lifeCounter: -1)
    }
    
    @IBAction func increaseLifeP1(_ sender: Any) {
        calculateLife(playerNum: 1, lifeCounter: 1)
    }
    
    @IBAction func decreaseLifeP2(_ sender: Any) {
        calculateLife(playerNum: 2, lifeCounter: -1)
    }
    
    @IBAction func increaseLifeP2(_ sender: Any) {
        calculateLife(playerNum: 2, lifeCounter: 1)
    }
    
    @IBAction func decreaseLifeP3(_ sender: Any) {
        calculateLife(playerNum: 3, lifeCounter: -1)
    }
    
    @IBAction func increaseLifeP3(_ sender: Any) {
        calculateLife(playerNum: 3, lifeCounter: 1)
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
