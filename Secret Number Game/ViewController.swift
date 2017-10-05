//
//  ViewController.swift
//  Secret Number Game
//
//  Copyright © 2017 Casey Gower. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet var Background: UIView!
    
    @IBOutlet weak var secretNumber: UILabel!
    
    @IBOutlet weak var numberOfGuesses: UILabel!
    
    @IBOutlet weak var lastGuess: UILabel!
    
    @IBOutlet weak var currentGuess: UILabel!
    
    @IBAction func updateCurrentGuess(_ sender: UISlider) {
        
        currentGuess.text = String(format: "%.0f", sender.value)
            }
    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var guessSlider: UISlider!
    
    @IBAction func submitGuessPressed(_ sender: UIButton) {
        
        switch secretNumber {
        case secretNumber.text?.hashValue < currentGuess.text?.hashValue :
            lastGuess = currentGuess
            int(numberOfGuesses) += 1
            
            //background color change
        
        case secretNumber.text?.hashValue > currentGuess.text?.hashValue :
        lastGuess = currentGuess
        numberOfGuesses += 1
        //Color change to red
        case secretNumber = CurrentGuess:
        //Color to Green!
        //Show number
        numberOfGuesses += 1
    }
    
    func loadSecretNumber() {
        
        submitButton.isHidden = false
        
        guessSlider.isHidden = false
        
        secretNumber.text = arc4random().description
        
        
        
    }
    
    
    
}

}
