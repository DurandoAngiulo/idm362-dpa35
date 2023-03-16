//
//  ViewControllerLifePage.swift
//  idm362-dpa35
//
//  Created by Durando Angiulo on 3/15/23.
//

import UIKit

import AVFoundation

var myAudioPlayerObj = AVAudioPlayer()

class ViewControllerLifePage: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let mySound = Bundle.main.path(forResource: "sounds/dice-roll", ofType: "wav")
        
        do {
          myAudioPlayerObj = try
          AVAudioPlayer(contentsOf: URL(fileURLWithPath: mySound!))
          myAudioPlayerObj.prepareToPlay()
          print("Sound file loaded and prepped!")
        } catch {
          print(error)
        }
    }
    var lifeCount:Int = 0

    @IBAction func assigntwentyLife(_ sender: Any) {
        lifeCount = 20
        if (myAudioPlayerObj.isPlaying) {
          myAudioPlayerObj.stop()
        } else {
          myAudioPlayerObj.play()
        }
        performSegue(withIdentifier: "gameSegue", sender: nil)
    }
    
    @IBAction func assignfortyLife(_ sender: Any) {
        lifeCount = 40
        if (myAudioPlayerObj.isPlaying) {
          myAudioPlayerObj.stop()
        } else {
          myAudioPlayerObj.play()
        }
        performSegue(withIdentifier: "gameSegue", sender: nil)
    }
    
    @IBAction func assignsixtyLife(_ sender: Any) {
        lifeCount = 60
        if (myAudioPlayerObj.isPlaying) {
          myAudioPlayerObj.stop()
        } else {
          myAudioPlayerObj.play()
        }
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
