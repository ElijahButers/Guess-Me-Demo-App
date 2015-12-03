//
//  InterfaceController.swift
//  Watch-GuessMeDemoApp WatchKit Extension
//
//  Created by User on 12/2/15.
//  Copyright © 2015 Elijah Buters. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    //Outlets
    
    @IBOutlet var guessSlider: WKInterfaceSlider!
    @IBOutlet var guessLabel: WKInterfaceLabel!
    @IBOutlet var resultLabel: WKInterfaceLabel!
    
    var guessNumber = 3
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    //Actions
    @IBAction func updateGuess(value: Float) {
        
        guessNumber = Int(value * 5)
        guessLabel.setText("Your Guess is: \(guessNumber)")
    }
    @IBAction func startGuess() {
        
        let randomNumber = Int(arc4random_uniform(6))
        
        if guessNumber == randomNumber {
            resultLabel.setText("Correct. You win!")
        } else {
            resultLabel.setText("Wrong. The number is \(randomNumber)")
        }
    }

}
