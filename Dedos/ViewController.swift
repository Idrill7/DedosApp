//
//  ViewController.swift
//  Dedos
//
//  Created by alejandro gonzalez casado .
//  Copyright © 2018 Idrilplays. All rights reserved.
//

import UIKit

class ViewController: UIViewController

{
    // texto de casilla
    @IBOutlet var TextField: UITextField!
    // texto de acierto
    @IBOutlet var correcto: UILabel!
    //texto de dedo o dedos
    @IBOutlet var dedoS: UILabel!
    //texto de incorrecto
    @IBOutlet var incorrecto: UILabel!
    // imagen de correcto
    @IBOutlet var clapHands: UIImageView!
    //imagen de incorrecto
    @IBOutlet var thinkEmoj: UIImageView!
    
    
    
    
    @IBOutlet var answerNumber: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // para que los textos aparezcan en blanco
        correcto.text = " "
        incorrecto.text = " "
        answerNumber.text = "¿?"
        dedoS.text = "DEDO/S"
        clapHands.isHidden = true
        thinkEmoj.isHidden = true
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func PressRedButton(_ sender: UIButton) {
        
        // número al azar entre 1 y 5 y que sea INT
        let randomNumber1To5 = Int(arc4random_uniform(5) + 1)
      
        // Para que salga DEDO - DEDOS
        if randomNumber1To5 == 1 { dedoS.text = "DEDO"}
        else { dedoS.text = "DEDOS" }
        // prueba
        
       /*  if userNumber <= 0 || userNumber >= 5 {
            incorrecto.text = ""
            correcto.text = ""
            let alertController4 : UIAlertController = UIAlertController(title: "¡¿Estás seguro que tenemos ese número de dedos?!👋🏻", message: "Inserte otro número", preferredStyle: .actionSheet)
            let OKaction4 : UIAlertAction = UIAlertAction(title: "Volver", style: .destructive, handler: nil)
            alertController4.addAction(OKaction4)
            present(alertController4, animated: true, completion: nil)}*/
        
        // Indicación del número del usuario
        if let fieldStr = TextField.text, let userNumber: Int = Int(fieldStr) {
        
    
        //Para ver si es correcto o no

        
        if userNumber < 0  || userNumber > 5 || userNumber == 0{
            incorrecto.text = "error"
            correcto.text? = " "
            answerNumber.text = "¿?"
            let alertController4 : UIAlertController = UIAlertController(title: "¡¿Estás seguro que tenemos ese número de dedos?!👋🏻", message: "Inserte otro número", preferredStyle: .actionSheet)
            let OKaction4 : UIAlertAction = UIAlertAction(title: "Volver", style: .destructive, handler: nil)
            alertController4.addAction(OKaction4)
            present(alertController4, animated: true, completion: nil)
        }
           else if userNumber == randomNumber1To5 {
                    correcto.text = "¡CORRECTO!"
                    incorrecto.text = ""
                    clapHands.isHidden = false
                    thinkEmoj.isHidden = true
                    answerNumber.text = String(randomNumber1To5)
                    let alertController2 : UIAlertController = UIAlertController(title: "¡Prueba a pulsar de nuevo!👋🏻", message: "¡Buena suerte!", preferredStyle: .actionSheet)
                    let OKaction2 : UIAlertAction = UIAlertAction(title: "Volver", style: .destructive, handler: nil)
                    alertController2.addAction(OKaction2)
                    present(alertController2, animated: true, completion: nil)
            }else if userNumber != randomNumber1To5 {
                incorrecto.text = "¡INCORRECTO!"
                correcto.text = " "
                clapHands.isHidden = true
                thinkEmoj.isHidden = false
                answerNumber.text = String(randomNumber1To5)
                let alertController3 : UIAlertController = UIAlertController(title: "¿Tendrás mas suerte ahora?🤞", message: "¡Buena suerte!", preferredStyle: .actionSheet)
                let OKaction3 : UIAlertAction = UIAlertAction(title: "Volver", style: .destructive, handler: nil)
                alertController3.addAction(OKaction3)
                present(alertController3, animated: true, completion: nil)
            }
        } else {
            answerNumber.text = "¿?"
            incorrecto.text = "error"
            let alertController3 : UIAlertController = UIAlertController(title: "¡Inserte un numero!", message: "¡Buena suerte!", preferredStyle: .actionSheet)
            let OKaction3 : UIAlertAction = UIAlertAction(title: "Volver", style: .destructive, handler: nil)
            alertController3.addAction(OKaction3)
            present(alertController3, animated: true, completion: nil)
        }
        
         /*else {
            incorrecto.text = ""
            correcto.text = ""
            let alertController4 : UIAlertController = UIAlertController(title: "¡¿Estás seguro que tenemos ese número de dedos?!👋🏻", message: "Inserte otro número", preferredStyle: .actionSheet)
            let OKaction4 : UIAlertAction = UIAlertAction(title: "Volver", style: .destructive, handler: nil)
            alertController4.addAction(OKaction4)
            present(alertController4, animated: true, completion: nil)
            
        } */
        
        // correcto e incorrecto
       /*  if userNumber == randomNumber1To5 {
            correcto.text = "¡CORRECTO!"
            incorrecto.text = ""
            clapHands.isHidden = false
            thinkEmoj.isHidden = true
            answerNumber.text = String(randomNumber1To5)
            let alertController2 : UIAlertController = UIAlertController(title: "¡Prueba a pulsar de nuevo!👋🏻", message: "¡Buena suerte!", preferredStyle: .actionSheet)
            let OKaction2 : UIAlertAction = UIAlertAction(title: "Volver", style: .destructive, handler: nil)
            alertController2.addAction(OKaction2)
            present(alertController2, animated: true, completion: nil)
        } else if userNumber != randomNumber1To5{
            incorrecto.text = "¡INCORRECTO!"
            correcto.text = " "
            clapHands.isHidden = true
            thinkEmoj.isHidden = false
            answerNumber.text = String(randomNumber1To5)
            let alertController3 : UIAlertController = UIAlertController(title: "¿Tendrás mas suerte ahora?🤞", message: "¡Buena suerte!", preferredStyle: .actionSheet)
            let OKaction3 : UIAlertAction = UIAlertAction(title: "Volver", style: .destructive, handler: nil)
            alertController3.addAction(OKaction3)
            present(alertController3, animated: true, completion: nil) */
            
            
        } /*else if userNumber == 0 {
            incorrecto.text = "¡No tenemos dedo 0!👋🏻"
            correcto.text = ""
            let alertController : UIAlertController = UIAlertController(title: "¡No tenemos dedo 0!👋🏻", message: "Inserte otro número", preferredStyle: .actionSheet)
            let OKaction : UIAlertAction = UIAlertAction(title: "Volver", style: .destructive, handler: nil)
            alertController.addAction(OKaction)
            present(alertController, animated: true, completion: nil) // ESTO NO ME FUNCIONA
        }else if userNumber >= 5  {
            incorrecto.text = ""
            correcto.text = ""
            let alertController4 : UIAlertController = UIAlertController(title: "¡No tenemos más de 5 dedos!👋🏻", message: "Inserte otro número", preferredStyle: .actionSheet)
            let OKaction4 : UIAlertAction = UIAlertAction(title: "Volver", style: .destructive, handler: nil)
            alertController4.addAction(OKaction4)
            present(alertController4, animated: true, completion: nil)} 
        // ESTO NO ME FUNCIONA*/
        
    

override var prefersStatusBarHidden: Bool {
        return false }
    }
    

