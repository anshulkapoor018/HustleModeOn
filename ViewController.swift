//
//  ViewController.swift
//  hustle-mode
//
//  Created by Anshul Kapoor on 05/10/17.
//  Copyright © 2017 Anshul Kapoor. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var darkBlueBG: UIImageView!
    @IBOutlet weak var powerBtn: UIButton!
    @IBOutlet weak var cloudHolder: UIView!
    @IBOutlet weak var rocket: UIImageView!
    @IBOutlet weak var hustle: UILabel!
    @IBOutlet weak var on: UILabel!
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /*let path = Bundle.main.path(forResource: "hustle-on", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do{
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        } catch let error as NSError{
            print(error.description)
        }*/
    }

    @IBAction func powerbuttonPressed(_ sender: Any) {
        cloudHolder.isHidden = false
        darkBlueBG.isHidden = true
        powerBtn.isHidden = true
        
        UIView.animate(withDuration: 2.3 , animations: {
            self.rocket.frame = CGRect(x: 0, y:190, width: 375, height: 203 )
        }) { (finished) in
            self.hustle.isHidden = false
            self.on.isHidden = false
        }
    }
}

