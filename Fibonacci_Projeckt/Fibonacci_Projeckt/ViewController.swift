//
//  ViewController.swift
//  Fibonacci_Projeckt
//
//  Created by Alumno on 11/10/23.
//

import UIKit

class ViewController: UIViewController{
    
    @IBOutlet weak var caja: UITextField!
    
    var serieFibonacci: [Int32] = []
    var n : Int32 = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //Funciones aparte
    func fibonacci(num : Int32) -> Int32{
        if(num == 0){
            return 0
        }else if(num == 1){
            return 1
        }
        return fibonacci(num: num - 1) + fibonacci(num: num - 2)
        
            
    }
    
    func agregarAlArreglo(n: Int32){
        serieFibonacci.removeAll()
        for i in 0...n{
            serieFibonacci.append(Int32(fibonacci(num: i)))
        }
    }
    
    //Boton
    @IBAction func Generar(_ sender: UIButton) {
        let numero = Int32(caja.text!)
        agregarAlArreglo(n: numero!)
        
       // let homeStoryboard = UIStoryboard(name: "Main", bundle: .main)
        
        //let homeViewController = homeStoryboard.instantiateViewController(withIdentifier: "Vista2") as! SecondViewController
        print(serieFibonacci)
        print("_//__1")
        
        
        performSegue(withIdentifier: "transition", sender: sender)
        //homeViewController.arreglo = serieFibonacci
        //navigationController?.pushViewController(homeViewController, animated: true)
        //performSegue(withIdentifier: "transition", sender: self)
    }
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let homeStoryboard = segue.destination as! SecondViewController
        
        homeStoryboard.arreglo = serieFibonacci
    }
}
