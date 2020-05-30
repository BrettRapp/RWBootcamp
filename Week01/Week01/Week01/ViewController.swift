//
//  ViewController.swift
//  Week01
//
//  Created by Brett J. Rapp on 30/5/20.
//  Copyright © 2020 Brett J. Rapp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var redValue = 0
    var greenValue = 0
    var blueValue = 0

    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func setColor(_ sender: Any) {
        
        let alert = UIAlertController(title: "String", message: "This is the message string", preferredStyle:   .alert)
        let action = UIAlertAction.init(title: "ok", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
    }
    
    
    @IBAction func redSliderMoved(_ sender: Any) {
        
    }
    
    @IBAction func greenSliderMoved(_ sender: Any) {
        
    }
    
    @IBAction func blueSliderMoved(_ sender: Any) {
        
    }
    

    @IBAction func resetButton(_ sender: Any) {
        
    }
    
}

