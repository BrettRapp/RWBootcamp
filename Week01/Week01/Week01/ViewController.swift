//
//  ViewController.swift
//  Week01
//
//  Created by Brett J. Rapp on 30/5/20.
//  Copyright © 2020 Brett J. Rapp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var redValue: Int = 0
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
    
    
    @IBAction func redSliderMoved(_ sender: UISlider) {
        var redValue = redSlider.value.rounded()
        redLabel.text =  "\(Int(redValue))"
        print(Int(redSlider.value))

    }
    
    @IBAction func greenSliderMoved(_ sender: Any) {
       var greenValue = greenSlider.value.rounded()
        greenLabel.text =  "\(Int(greenValue))"
        print(Int(greenSlider.value))
    }
    
    @IBAction func blueSliderMoved(_ sender: Any) {
        var blueValue = blueSlider.value.rounded()
        blueLabel.text =  "\(Int(blueValue))"
        print(Int(blueSlider.value))
    }
    

    @IBAction func resetButton(_ sender: Any) {
        redValue = 0
        greenValue = 0
        blueValue = 0
        
        redSlider.value = 0
        greenSlider.value = 0
        blueSlider.value = 0
        
        redLabel.text = "0"
        greenLabel.text = "0"
        blueLabel.text = "0"
        
        
    }
    
}

