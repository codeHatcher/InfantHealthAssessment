//
//  InterfaceController.swift
//  InfantQuestionsPrototype WatchKit Extension
//
//  Created by Brown Magic on 5/26/15.
//  Copyright (c) 2015 codeHatcher. All rights reserved.
//

import WatchKit
import Foundation

var answers: [String] = ["blank", "blank"]
var questions: [String] = [
  "Does he/she currently have a fever that is over 100.4 degrees?",
  "Has he/she had a cough for 72 hours or longer?"
]

let red = UIColor(red: 0.4, green: 0.053, blue: 0.036, alpha: 0.8)
let green = UIColor(red: 0.072, green: 0.4, blue: 0.114, alpha: 0.8)

class InterfaceController: WKInterfaceController {
  
  @IBOutlet weak var question1Button: WKInterfaceButton!
  @IBOutlet weak var question2Button: WKInterfaceButton!
  @IBOutlet weak var resultsLabel: WKInterfaceLabel!
  override func awakeWithContext(context: AnyObject?) {
    super.awakeWithContext(context)
    
    // Configure interface objects here.
  }
  
  override func willActivate() {
    // This method is called when watch view controller is about to be visible to user
    super.willActivate()
    println("Answers: \(answers[0])")
    
    // handle button 1
    if answers[0] == "yes" {
      question1Button.setBackgroundColor(red)
      question1Button.setAlpha(0.5)
    } else if answers[0] == "no" {
      question1Button.setBackgroundColor(green)
      question1Button.setAlpha(0.5)
    }
    // handle button 2
    if answers[1] == "yes" {
      question2Button.setBackgroundColor(red)
      question2Button.setAlpha(0.5)
    } else if answers[1] == "no" {
      question2Button.setBackgroundColor(green)
      question2Button.setAlpha(0.5)
    }
    
    // check to see if the questions are answered, if so change label text
    if answers[0] != "blank" && answers[1] != "blank" {
      if answers[0] == "yes" || answers[1] == "yes" {
        resultsLabel.setText("Check with Doctor")
      } else {
        resultsLabel.setText("Don't Worry!")
      }
    } else {
      resultsLabel.setText("Finish Questions")
    }
  }
  
  override func didDeactivate() {
    // This method is called when watch view controller is no longer visible
    super.didDeactivate()
  }
  
  @IBAction func questionButtonTapped() {
    presentControllerWithName("detailQuestion", context: 0)
  }
  @IBAction func onCoughButtonPress() {
    presentControllerWithName("detailQuestion", context: 1)
  }
}
