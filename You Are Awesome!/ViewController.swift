//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Michael Green on 1/22/18.
//  Copyright © 2018 mgreen. All rights reserved.
//


    import UIKit
    
    class ViewController: UIViewController {
        
        @IBOutlet weak var messageLabel: UILabel!
        var index1 = 0
        var index2 = 0
        
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
        }
        
        
        
        @IBAction func showMessagePressed(_ sender: Any) {
            var messages = ["You Are Awesome!", "You Are Great!", "You Are Da Bomb!", "When the Genius Bar Needs Help They Call You!"]
            var colors = [UIColor.red, UIColor.blue, UIColor.green]
            
            
            messageLabel.text = messages[index1]
            messageLabel.textColor = colors[index2]
            
            index1 = index1 + 1
            
            if index1 == messages.count{
                index1 = 0
            }
            
            index2 = index2 + 1
            
            if index2 == colors.count{
                index2 = 0
            }
            
            
            //        let message1 = "You Are Awesome!"
            //        let message2 = "You Are Great!"
            //
            //        if messageLabel.text == message1 {
            //            messageLabel.text = "You are Great"
            //            messageLabel.textColor = UIColor.blue
            //        } else {
            //            messageLabel.text = message2
            //            messageLabel.textColor = UIColor.red
            //        }
        }
        
        
        
        
    }



