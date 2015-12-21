//
//  ViewController.swift
//  playsound
//
//  Created by 金飞 on 15/12/21.
//  Copyright © 2015年 Fei Jin. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var aPlayer : AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        aPlayer = try! AVAudioPlayer(contentsOfURL: NSBundle.mainBundle().URLForResource("少女时代-TaeTiSeo - Twinkle", withExtension: "mp3")!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func playPressed(sender: AnyObject) {
        aPlayer.play()
    }


    @IBAction func stopPressed(sender: AnyObject) {
        aPlayer.stop()
    }
    
    
    @IBAction func pausePressed(sender: AnyObject) {
        aPlayer.pause()
    }
    
}

