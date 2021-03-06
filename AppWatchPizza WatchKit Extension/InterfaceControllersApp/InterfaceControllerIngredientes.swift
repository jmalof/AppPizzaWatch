//
//  InterfaceControllerIngredientes.swift
//  AppWatchPizza
//
//  Created by Jordy Malo on 12/23/18.
//  Copyright © 2018 Jordy Malo. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceControllerIngredientes: WKInterfaceController {
    var pedido:Pedido?
    
    @IBOutlet weak var btnJamon: WKInterfaceButton!
    @IBOutlet weak var btnPepperoni: WKInterfaceButton!
    @IBOutlet weak var btnPavo: WKInterfaceButton!
    @IBOutlet weak var btnSalchicha: WKInterfaceButton!
    @IBOutlet weak var btnAceituna: WKInterfaceButton!
    @IBOutlet weak var btnCebolla: WKInterfaceButton!
    @IBOutlet weak var btnPimiento: WKInterfaceButton!
    @IBOutlet weak var btnPinia: WKInterfaceButton!
    @IBOutlet weak var btnAnchoa: WKInterfaceButton!
    
    @IBOutlet weak var btnEnviar: WKInterfaceButton!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        self.pedido = (context as! Pedido)
        // Configure interface objects here.
    }
    @IBAction func selectJamon() {
        pedido?.ingredientes.append("Jamón")
        btnJamon.setEnabled(false)
    }
   
    @IBAction func selectPepperoni() {
        pedido?.ingredientes.append("Pepperoni")
        btnPepperoni.setEnabled(false)
    }
    @IBAction func selectPavo() {
        pedido?.ingredientes.append("Pavo")
        btnPavo.setEnabled(false)
    }
   
    @IBAction func selectSalchicha() {
        pedido?.ingredientes.append("Salchicha")
        btnSalchicha.setEnabled(false)
    }
    @IBAction func selectAceituna() {
        pedido?.ingredientes.append("Aceituna")
        btnAceituna.setEnabled(false)
    }
    @IBAction func selectCebolla() {
        pedido?.ingredientes.append("Cebolla")
        btnCebolla.setEnabled(false)
    }
    @IBAction func selectPimiento() {
        pedido?.ingredientes.append("Pimiento")
        btnPimiento.setEnabled(false)
    }
    @IBAction func selectPinia() {
        pedido?.ingredientes.append("Piña")
        btnPinia.setEnabled(false)
    }
    @IBAction func selectAnchoa() {
        pedido?.ingredientes.append("Anchoa")
        btnAnchoa.setEnabled(false)
    }
    @IBAction func clickEnviar() {
        if self.pedido!.ingredientes.count < 5 {
            self.btnEnviar.setTitle("Mínimo 5 ingredientes")
            return
        }
        
        pushController(withName: "pushToConfirmar", context: self.pedido)
    }
}
