//
//  InterfaceController.swift
//  InfantQuestionsPrototype WatchKit Extension
//
//  Created by Brown Magic on 5/26/15.
//  Copyright (c) 2015 codeHatcher. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
  
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
  
  @IBAction func questionButtonTapped() {
    //presentControllerWithName(<#name: String#>, context: <#AnyObject?#>)
  }
}
