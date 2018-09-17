//
//  SecondViewController.swift
//  ShopingList
//
//  Created by Ernesto Pang on 9/16/18.
//  Copyright © 2018 Ernesto Pang. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    var cuenta = 0
    
    @IBAction func aumentaBoton(_ sender: UIButton) {
        cuenta = cuenta + 1
        etiquetaCuenta.text = "\(cuenta)"
    }
    
    @IBAction func disminuyeBoton(_ sender: UIButton) {
        cuenta = cuenta - 1
        etiquetaCuenta.text = "\(cuenta)"
    }
    @IBOutlet weak var etiquetaCuenta: UILabel!
    @IBOutlet weak var etiqueta: UILabel!
    var fromFirstView: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        etiqueta.text = fromFirstView
        etiquetaCuenta.text = "\(cuenta)"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
