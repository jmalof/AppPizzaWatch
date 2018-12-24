//
//  InterfaceControllerResultado.swift
//  AppWatchPizza
//
//  Created by Jordy Malo on 12/24/18.
//  Copyright © 2018 Jordy Malo. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceControllerResultado: WKInterfaceController {
    
    var pedido:Pedido?
    
    @IBOutlet weak var textViewConfrimar: WKInterfaceLabel!
    
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        self.pedido = (context as! Pedido)
        self.textViewConfrimar.setText(self.pedido?.toString())
        // Configure interface objects here.
    }

    @IBAction func clickEnviar() {
        pushController(withName: "pushToRealizado", context: self.pedido)
    }
    
    @IBAction func clickReiniciar() {
        pushController(withName: "pushMain", context: self.pedido)
    }
}
