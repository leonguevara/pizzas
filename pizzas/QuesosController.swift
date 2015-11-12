//
//  QuesosController.swift
//  pizzas
//
//  Created by León Felipe Guevara Chávez on 2015-11-12.
//  Copyright © 2015 León Felipe Guevara Chávez. All rights reserved.
//

import UIKit

class QuesosController: UIViewController {

    var quesos : [String] = ["Mozzarela","Cheddar","Parmesano","Sin queso"]
    var tamanoElegido : String = "Grande"
    var masaElegida : String = "Crujiente"
    var quesoElegido : String = ""

    @IBOutlet weak var tamanoMasaPizza: UILabel!
    override func viewWillAppear(animated: Bool) {
        tamanoMasaPizza.text = "Tamaño: \(tamanoElegido) - Masa: \(masaElegida)"
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

    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return quesos.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return quesos[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        quesoElegido = quesos[row]
    }
}
