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
    var pedido:Pedido?
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        self.pedido = (context as! Pedido)
        // Configure interface objects here.
    }
    @IBAction func clickDelgada() {
        self.pedido?.masa = .Delgada
        pushController(withName: "pushToQueso", context: self.pedido)
    }
    
    @IBAction func clickCrujiente() {
        self.pedido?.masa = .Crujiente
        pushController(withName: "pushToQueso", context: self.pedido)
    }
    
    @IBAction func clickGruesa() {
        self.pedido?.masa = .Gruesa
        pushController(withName: "pushToQueso", context: self.pedido)
    }
}
