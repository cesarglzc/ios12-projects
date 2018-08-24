//
//  ViewController.swift
//  01-iamrich
//
//  Created by Cesar Eduardo Gonzalez Colunga on 05/08/18.
//  Copyright © 2018 Cesar Eduardo Gonzalez Colunga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // PROPERTYS
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var imageViewDiamond: UIImageView!
    @IBOutlet weak var buttonPush: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // METHODS
    @IBAction func buttonPressed(_ sender: UIButton) {
        
//        self.labelTitle.text = "He pulsado el botón"
//        self.labelTitle.textColor = UIColor.green
//
//        self.labelTitle.font = UIFont.systemFont(ofSize: 24.0)
//        self.imageViewDiamond.image = UIImage(named: "diamond")
        
        let controller = UIAlertController(title: "I am Rich", message: """
                                                                        I am Rich,
                                                                        I deserve it.
                                                                        I am good,
                                                                        healthy and successful
                                                                        """, preferredStyle: .actionSheet)
        
        let action = UIAlertAction(title: "Aceptar", style: .default) { (action) in
            print("He pulsado el botón Aceptar.")
        }
        
        controller.addAction(action)
        
        let action2 = UIAlertAction(title: "Borrar", style: .destructive, handler: { (action) in
            print("He pulsado el botón de Borrar.")
        })
        
        controller.addAction(action2)
        
        let action3 = UIAlertAction(title: "Cancelar", style: .cancel) { _ in
            print("He pulsado el botón de Cancelar.")
        }
        controller.addAction(action3)
        
        
        self.show(controller, sender: nil)
        
    }
    

}

