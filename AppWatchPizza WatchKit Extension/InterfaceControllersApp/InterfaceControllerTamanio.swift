//
//  InterfaceControllerTamanio.swift
//  AppWatchPizza
//
//  Created by Jordy Malo on 12/23/18.
//  Copyright © 2018 Jordy Malo. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceControllerTamanio: WKInterfaceController {
    var pedido:Pedido?
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        self.pedido = (context as? Pedido)
        // Configure interface objects here.
    }
    @IBAction func clickPequenia() {
        pedido?.tamanio = .Pequenia
        pushController(withName: "pushToMasa", context: self.pedido)
    }
    
    @IBAction func clickMediana() {
        pedido?.tamanio = .Mediana
        pushController(withName: "pushToMasa", context: self.pedido)
    }
    @IBAction func clickGrande() {
        pedido?.tamanio = .Grande
        pushController(withName: "pushToMasa", context: self.pedido)
    }
}
