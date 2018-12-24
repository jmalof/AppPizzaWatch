//
//  InterfaceControllerRealizado.swift
//  AppWatchPizza
//
//  Created by Jordy Malo on 12/24/18.
//  Copyright © 2018 Jordy Malo. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceControllerRealizado: WKInterfaceController {
    var pedido:Pedido?
    @IBOutlet weak var textViewRealizado: WKInterfaceLabel!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        self.pedido = (context as! Pedido)
        
        self.textViewRealizado.setText(self.pedido?.toString())
        // Configure interface objects here.
    }

    @IBAction func clickGenial() {
        pushController(withName: "pushMain", context: self.pedido)
    }
}
