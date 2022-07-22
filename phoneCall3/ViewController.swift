//
//  ViewController.swift
//  phoneCall3
//
//  Created by Scholar on 7/22/22.
//

import UIKit

public var numberUser = ""

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    
    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func saveNumber(_ sender: UIButton) {
     if let newTitle = textField.text {
         numberUser = newTitle
     }
    }
    
    @IBAction func clicked(_ sender: Any) {
        guard let number = URL(string: "tel://" + numberUser) else { return }
                        UIApplication.shared.open(number)
    }
 
        
        
    
}


