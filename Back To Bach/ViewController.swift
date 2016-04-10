//
//  ViewController.swift
//  Back To Bach
//
//  Created by Yisen on 6/21/15.
//  Copyright (c) 2015 Yisen. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
    
    var player:AVAudioPlayer = AVAudioPlayer()

    
    
    @IBAction func startPlay(sender: AnyObject) {
        
        player.play()
        
    }
    
    @IBAction func stopPause(sender: AnyObject) {
        
        player.pause()
    }
    
    @IBAction func reallyStop(sender: AnyObject) {
        
        player.stop()
        player.currentTime = 0
    }
    
    @IBOutlet weak var sliderValue: UISlider!
    
    @IBAction func sliderAction(sender: AnyObject) {
        
        player.volume = sliderValue.value
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var audioPath = NSBundle.mainBundle().pathForResource("bach1", ofType: "mp3")
        
        var error: NSError? = nil
        
        player = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: audioPath as String!), error: &error)
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

