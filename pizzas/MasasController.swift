//
//  MasasController.swift
//  pizzas
//
//  Created by León Felipe Guevara Chávez on 2015-11-11.
//  Copyright © 2015 León Felipe Guevara Chávez. All rights reserved.
//

import UIKit

class MasasController: UIViewController {

    @IBOutlet weak var tamanoPizza: UILabel!
    var masas : [String] = ["Delgada","Crujiente","Gruesa"]
    var tamanoElegido : String = "Grande"
    
    override func viewWillAppear(animated: Bool) {
        tamanoPizza.text = "Tamaño elegido: \(tamanoElegido)"
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
        return masas.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return masas[row]
    }
}
