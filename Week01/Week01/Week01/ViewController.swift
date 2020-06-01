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
    var greenValue: Int = 0
    var blueValue: Int = 0

    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var colorNameLabel: UILabel!
 
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        colorNameLabel.text = "Move the sliders to make your color..."

    }

    @IBAction func setColor(_ sender: Any) {
        
        
        self.view.backgroundColor = UIColor(red: CGFloat((redSlider.value/255)), green: CGFloat((greenSlider.value/255)), blue: CGFloat((blueSlider.value/255)), alpha: 1.0)
               
        let alert = UIAlertController(title: "Nice Choice!", message: "Give your color a name", preferredStyle:   .alert)

        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in

            if let colorName = alert.textFields?.first?.text {
                
                self.colorNameLabel.text = "You called your color: \(colorName)"
            }
        }))
        
        alert.addTextField()
        alert.textFields![0].placeholder = "Name your color"
        
        present(alert, animated: true, completion: nil)
        
    }
    
    @IBAction func sliderMoved(_ sender: Any) {
        
        redLabel.text = "\(Int(redSlider.value))"
        greenLabel.text = "\(Int(greenSlider.value))"
        blueLabel.text = "\(Int(blueSlider.value))"

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
        
        colorNameLabel.text = "Move the sliders to make your color..."
  
        self.view.backgroundColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1.0)
                
    }
    
}

