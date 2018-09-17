//
//  ViewController.swift
//  tablaprototipo"
//
//  Created by Macbook on 17/09/18.
//  Copyright © 2018 max. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    
    struct productos{
        var nombre: String
        var precio: Int
        var informacion: String
    }
    var silla = productos(nombre: "Silla", precio: 300, informacion: """
Silla con capacidad de recargarse
""")
    var naveEspacial = productos(nombre: "Nave Espacial", precio: 30000, informacion: """
Nave espacial concapacidad de vieajes interdimencionales
""")
    
    //silla = {"Nombre" : "Silla" ,"precio" : 300, "informacion" = "Silla recargable" }
    //naveEspacial = {"Nombre" : "Silla" ,"precio" : 300, "informacion" = "Silla recargable" }
    var shopinglist = [productos]()
    
    
    
    var lista = ["carro","casa"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return shopinglist.count
        return lista.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        cell.textLabel?.text =  lista[indexPath.row]//shopinglist[indexPath.row].nombre//
        return cell
    }
    
    
    
    @IBOutlet weak var tabla: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.darkGray
        // Do any additional setup after loading the view, typically from a nib.
        
        var shopinglist = [productos]()
        shopinglist = [silla, naveEspacial]
        
        print(shopinglist[1].nombre)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func unwindSecondView(segue: UIStoryboardSegue){
        
    }
  
        
    }





