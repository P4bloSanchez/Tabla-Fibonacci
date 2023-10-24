//
//  SecondViewController.swift
//  Fibonacci_Projeckt
//
//  Created by Alumno on 23/10/23.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet weak var tabla: UITableView!
    
    var arreglo : [Int32] = []
    var n : Int32 = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabla.delegate = self
        tabla.dataSource = self

        
        print(arreglo)
        // Do any additional setup after loading the view.
    }
//Protocolos
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arreglo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = UITableViewCell()
        celda.textLabel?.text = String(arreglo[indexPath.row])
        return celda
    }

}
