//
//  ViewController.swift
//  ViewControllerProjesi
//
//  Created by Hüseyin HÖBEK on 20.08.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var birinciLabel: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    var alinanSifre = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("view did load")
        
    }

    override func viewDidAppear(_ animated: Bool) {
        print("view did appaer")
        
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("view did dissapear")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("view will appear")
        textField.text = ""

    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("view will disappear")
    }
    
    
    
    @IBAction func KontrolEtTiklandı(_ sender: Any) {
        
        alinanSifre = textField.text!
        
        if alinanSifre == "Hüseyin" {
            performSegue(withIdentifier: "toikinciVC", sender: nil)
        } else {
            birinciLabel.text = "Şifre Yanlış"
        }
        
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        if segue.identifier == "toikinciVC" {
            
            let destinationVC = segue.destination as! IkinciViewController
            destinationVC.verilensifre = alinanSifre
            
        }
        
    }
    
}

