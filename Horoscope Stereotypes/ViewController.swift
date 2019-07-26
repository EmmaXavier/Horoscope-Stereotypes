//
//  ViewController.swift
//  Horoscope Stereotypes
//
//  Created by Apple on 7/25/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    


    @IBAction func showMessage(sender: UIButton) {
        
        let emojis = ["♈️" : "Aries",  "♉️" : "Taurus", "♊️" : "Gemini"]
        let customMessage = ["Aries": ["People think aries have a short fuse, but people just can't comprehend their passion", "The small minded will say aries are confrontational, but really, they just know what they want", "People must be confused, they think aries leave things unfinished, yet they have unrivaled passion?Uh... okay."], "Taurus": ["People frame the stubborness of tarus as negative, but they just won't stop until they reah their goals", "They say taurus are lazy, but have they seen The Rock? That's one jacked taurus!", "People think taurus are selfish, yet also generous? Maybe taurus are just capable of selflessness *and* self love"], "Gemini": ["Gemini are", "Gemini can be"]]

        
        let randomize = Int.random(in: 0 ..< 3)
        let selectedSign = sender.titleLabel?.text
        let emojiMessage = customMessage[emojis[selectedSign!]!]?[randomize]
        
        let alertController = UIAlertController(title: emojis[selectedSign!], message: emojiMessage, preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "Bet", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
        
    }


}

