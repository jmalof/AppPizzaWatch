//
//  InterfaceControllerMasa.swift
//  AppWatchPizza
//
//  Created by Jordy Malo on 12/23/18.
//  Copyright © 2018 Jordy Malo. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceControllerMasa: WKInterfaceController {

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    @IBAction func clickDelgada() {
    }
    
    @IBAction func clickCrujiente() {
    }
    
    @IBAction func clickGruesa() {
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
