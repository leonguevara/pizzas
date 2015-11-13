//
//  IngredientesController.swift
//  pizzas
//
//  Created by León Felipe Guevara Chávez on 2015-11-12.
//  Copyright © 2015 León Felipe Guevara Chávez. All rights reserved.
//

import UIKit

class IngredientesController: UIViewController {

    @IBOutlet weak var tamanoMasaPizza: UILabel!
    @IBOutlet weak var queso: UILabel!
    @IBOutlet weak var pepperoni: UISwitch!
    @IBOutlet weak var jamon: UISwitch!
    @IBOutlet weak var pavo: UISwitch!
    @IBOutlet weak var salchicha: UISwitch!
    @IBOutlet weak var anchoas: UISwitch!
    @IBOutlet weak var aceitunas: UISwitch!
    @IBOutlet weak var cebolla: UISwitch!
    @IBOutlet weak var pimiento: UISwitch!
    @IBOutlet weak var pina: UISwitch!
    var ingredientes: Int = 0
    var tamanoElegido : String = "Grande"
    var masaElegida : String = "Crujiente"
    var quesoElegido : String = "Mozzarela"
   
    override func viewWillAppear(animated: Bool) {
        tamanoMasaPizza.text = "Tamaño: \(tamanoElegido) - Masa: \(masaElegida)"
        queso.text = "Queso: \(quesoElegido)"
        inicializaContador()
        if (ingredientes==5) {
            inhabilitaSwitches()
        }
        else {
            habilitaSwitches()
        }
    }
    
    func inicializaContador(){
        ingredientes = 0
        if (pepperoni.on) {
            ingredientes++
        }
        if (jamon.on) {
            ingredientes++
        }
        if (pavo.on) {
            ingredientes++
        }
        if (salchicha.on) {
            ingredientes++
        }
        if (anchoas.on) {
            ingredientes++
        }
        if (aceitunas.on) {
            ingredientes++
        }
        if (cebolla.on) {
            ingredientes++
        }
        if (pimiento.on) {
            ingredientes++
        }
        if (pina.on) {
            ingredientes++
        }
    }
    
    func habilitaSwitches(){
        if (!pepperoni.enabled) {
            pepperoni.enabled = true
        }
        if (!jamon.enabled) {
            jamon.enabled = true
        }
        if (!pavo.enabled) {
            pavo.enabled = true
        }
        if (!salchicha.enabled) {
            salchicha.enabled = true
        }
        if (!anchoas.enabled) {
            anchoas.enabled = true
        }
        if (!aceitunas.enabled) {
            aceitunas.enabled = true
        }
        if (!cebolla.enabled) {
            cebolla.enabled = true
        }
        if (!pimiento.enabled) {
            pimiento.enabled = true
        }
        if (!pina.enabled) {
            pina.enabled = true
        }
    }
    
    func inhabilitaSwitches(){
        if (!pepperoni.on) {
            pepperoni.enabled = false
        }
        if (!jamon.on) {
            jamon.enabled = false
        }
        if (!pavo.on) {
            pavo.enabled = false
        }
        if (!salchicha.on) {
            salchicha.enabled = false
        }
        if (!anchoas.on) {
            anchoas.enabled = false
        }
        if (!aceitunas.on) {
            aceitunas.enabled = false
        }
        if (!cebolla.on) {
            cebolla.enabled = false
        }
        if (!pimiento.on) {
            pimiento.enabled = false
        }
        if (!pina.on) {
            pina.enabled = false
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
