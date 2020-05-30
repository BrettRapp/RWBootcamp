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
        
        self.view.backgroundColor = UIColor(red: CGFloat((redSlider.value/255)), green: CGFloat((greenSlider.value/255)), blue: CGFloat((blueSlider.value/255)), alpha: 1.0)
               
        
        let alert = UIAlertController(title: "String", message: "This is the message string", preferredStyle:   .alert)
        let action = UIAlertAction.init(title: "ok", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
    }
    
    @IBAction func sliderMoved(_ sender: Any) {

        redLabel.text = String(redSlider.value.rounded())
        greenLabel.text = String(greenSlider.value.rounded())
        blueLabel.text = String(blueSlider.value.rounded())

    }
    
    @IBAction func resetButton(_ sender: Any) {
        redValue = 0
        greenValue = 0
        blueValue = 0

        redLabel.text = "0"
        greenLabel.text = "0"
        blueLabel.text = "0"
        
        redSlider.value = 0
        greenSlider.value = 0
        blueSlider.value = 0
        
        self.view.backgroundColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1.0)
                
    }
    
}

