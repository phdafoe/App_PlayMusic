//
//  ViewController.swift
//  App_PlayMusic
//
//  Created by formador on 29/3/17.
//  Copyright © 2017 formador. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    //MARK: - Variables locales
    var customPlayer = AVAudioPlayer()
    
    
    //MARK: - IBOutlets
    @IBOutlet weak var mySliderVolumen: UISlider!
    @IBOutlet weak var myImagenDecorativa: UIImageView!
    
    //MARK: - IBactions
    
    @IBAction func myPlayButtonACTION(_ sender: Any) {
        customPlayer.play()
    }
    
    @IBAction func myPauseButtonACTION(_ sender: Any) {
        customPlayer.pause()
    }
    
    @IBAction func myStopButtonACTION(_ sender: Any) {
        customPlayer.stop()
        customPlayer.currentTime = 0
    }
    
    @IBAction func myVolumenSliderButtonACTION(_ sender: Any) {
        customPlayer.volume = mySliderVolumen.value
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dameAudio()
        
        myImagenDecorativa.layer.cornerRadius = myImagenDecorativa.frame.width / 2
        myImagenDecorativa.layer.borderColor = UIColor.white.cgColor
        myImagenDecorativa.layer.borderWidth = 1
        myImagenDecorativa.clipsToBounds = true

        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: - Utils
    func dameAudio(){
        let audioPath = Bundle.main.path(forResource: "09 I Appear Missing", ofType: "mp3")
        let urlPath = URL(fileURLWithPath: audioPath!)
        do{
            customPlayer = try AVAudioPlayer(contentsOf: urlPath)
        }catch{
            print("Error obteniendo el audio")
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    


}

