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
    var topRight:Int = 40
    //bottom right
    var bottomRight:Int = 40
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        topLeftLabel.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 2)
        topRightLabel.transform = CGAffineTransform(rotationAngle: -CGFloat.pi / 2)
        bottomLeftLabel.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 2)
        bottomRightLabel.transform = CGAffineTransform(rotationAngle: -CGFloat.pi / 2)
        
        // Do any additional setup after loading the view.
    }
    
    func calculateLife(playerNum: Int, lifeCounter: Int){
        switch playerNum {
        case 1:
            topLeft = topLeft+lifeCounter
            topLeftLabel.text = String(topLeft)
        case 2:
            topRight = topRight+lifeCounter
            topRightLabel.text = String(topRight)
        case 3:
            bottomLeft = bottomLeft+lifeCounter
        bottomLeftLabel.text = String(bottomLeft)
        default:
            bottomRight = bottomRight+lifeCounter
            bottomRightLabel.text = String(bottomRight)
        }
            //if playernum = 1. then refernce topLeft

            print("calculate life called")

        }
//     player 1
    
    @IBAction func decreaseLifeP1(_ sender: Any) {
        calculateLife(playerNum: 1, lifeCounter: -1)
    }
    
    @IBAction func increaseLifeP1(_ sender: Any) {
        calculateLife(playerNum: 1, lifeCounter: 1)}
    //player 2
    
    @IBAction func increaseLifeP2(_ sender: Any) {
        calculateLife(playerNum: 2, lifeCounter: 1)}
    
    @IBAction func decreaseLifeP2(_ sender: Any) {
        calculateLife(playerNum: 2, lifeCounter: -1)
    }
    
    //player 3
    
    @IBAction func decreaseLifeP3(_ sender: Any) {
        calculateLife(playerNum: 3, lifeCounter: -1)
    }
    
    @IBAction func increaseLifeP3(_ sender: Any) {
        calculateLife(playerNum: 3, lifeCounter: 1)
    }
    
    //player 4
    
    
    @IBAction func increaseLifeP4(_ sender: Any) {
        calculateLife(playerNum: 4, lifeCounter: 1)
    }
    
    @IBAction func decreaseLifeP4(_ sender: Any) {
        calculateLife(playerNum: 4, lifeCounter: -1)
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


