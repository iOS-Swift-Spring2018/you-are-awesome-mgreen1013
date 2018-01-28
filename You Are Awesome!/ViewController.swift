//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Michael Green on 1/22/18.
//  Copyright © 2018 mgreen. All rights reserved.
//


    import UIKit
    import AVFoundation
    
    class ViewController: UIViewController {
        
        @IBOutlet weak var messageLabel: UILabel!
        @IBOutlet weak var awesomeImage: UIImageView!
        var awesomePlayer = AVAudioPlayer()
        var index = -1
        let numberOfImages = 10
        var imageNumber = -1
        let numberOfSounds = 4
        var soundNumber = -1
        var soundName = ""
        
        
        
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
        }
        
        func playSound(soundName: String){
            if let sound = NSDataAsset(name: soundName){
                do {
                    try awesomePlayer = AVAudioPlayer(data: sound.data)
                    awesomePlayer.play()
                } catch {
                    print("Error: data in \(soundName) couldn't be played as a sound")
                }
            } else {
                print("Error: file \(soundName) didn't load")
            }
        }
        
        func nonRepeatingRandom(lastNumber: Int, maxValue: Int) -> Int {
           var newIndex = -1
            repeat {
                newIndex = Int(arc4random_uniform(UInt32(maxValue)))

            } while lastNumber == newIndex
            return newIndex
        }
        

        
        @IBAction func showMessagePressed(_ sender: Any) {
            var messages = ["You Are Awesome!", "You Are Great!", "You Are Fantastic!", "You Are Da Bomb!", "When the Genius Bar Needs Help They Call You!"]

            print("pressed")
            
            //Show a Message
            index = nonRepeatingRandom(lastNumber: index, maxValue: messages.count)
            messageLabel.text = messages[index]
            
            //Show an Image
            awesomeImage.isHidden = false
            imageNumber = nonRepeatingRandom(lastNumber: imageNumber, maxValue: numberOfImages)
            awesomeImage.image = UIImage(named: "image\(imageNumber)")
            
            //Get number for sounds
            soundNumber = nonRepeatingRandom(lastNumber: soundNumber, maxValue: numberOfSounds)
            
            //Play Sound
            let soundName = "sound\(soundNumber)"
            playSound(soundName: soundName)
      
            
        }
        
        
        
        
    }



