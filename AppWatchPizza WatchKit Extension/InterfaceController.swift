//
//  InterfaceController.swift
//  AppWatchPizza WatchKit Extension
//
//  Created by Jordy Malo on 12/23/18.
//  Copyright © 2018 Jordy Malo. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    var pedido:Pedido?
    
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    @IBAction func clickRealizarPedido() {
        self.pedido = Pedido()
        pushController(withName: "pushToTamanio", context: self.pedido)
    }
}
