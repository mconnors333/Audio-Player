//
//  ViewController.swift
//  Audio Player
//
//  Created by Matthew Connors on 9/9/16.
//  Copyright © 2016 Matt Connors. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBAction func play(_ sender: AnyObject) {
        
        player.play()
        
        
        
    }
    @IBAction func pause(_ sender: AnyObject) {
        
        player.pause()
        
    }
    @IBAction func sliderMoved(_ sender: AnyObject) {
        
        player.volume = slider.value
        
    }
    @IBOutlet weak var slider: UISlider!
    
    
    
    
    var player = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let audioPath = Bundle.main.path(forResource: "sheep", ofType: "mp3")
        
        do {
            
            try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath!))
            
        } catch {
            
            // Process any errors
            
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

