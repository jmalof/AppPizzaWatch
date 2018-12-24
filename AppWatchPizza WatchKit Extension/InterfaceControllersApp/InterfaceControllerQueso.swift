//
//  InterfaceControllerQueso.swift
//  AppWatchPizza
//
//  Created by Jordy Malo on 12/23/18.
//  Copyright © 2018 Jordy Malo. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceControllerQueso: WKInterfaceController {
    var pedido:Pedido?
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        self.pedido = (context as! Pedido)
        // Configure interface objects here.
    }

    @IBAction func clickMozarella() {
        self.pedido?.queso = .Mozarella
        pushController(withName: "pushToIngredientes", context: self.pedido)
    }
    @IBAction func clickCheddar() {
        self.pedido?.queso = .Cheddar
        pushController(withName: "pushToIngredientes", context: self.pedido)
    }
    @IBAction func clickParmesano() {
        self.pedido?.queso = .Parmesano
        pushController(withName: "pushToIngredientes", context: self.pedido)
    }
    @IBAction func clickSinQueso() {
        self.pedido?.queso = .SinQueso
        pushController(withName: "pushToIngredientes", context: self.pedido)
    }
}
