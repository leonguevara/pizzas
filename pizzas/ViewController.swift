//
//  ViewController.swift
//  pizzas
//
//  Created by León Felipe Guevara Chávez on 2015-11-10.
//  Copyright © 2015 León Felipe Guevara Chávez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var tamanos : [String] = ["Chica","Mediana","Grande"]
    var tamanoElegido : String = ""

    @IBOutlet weak var tamanosPizza: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista=segue.destinationViewController as! MasasController
        if (tamanoElegido != "" ) {
            sigVista.tamanoElegido = tamanoElegido
        }
        else {
            sigVista.tamanoElegido = "Chica"
        }
    }

    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return tamanos.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return tamanos[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        tamanoElegido = tamanos[row]
    }
}

