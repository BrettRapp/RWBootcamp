//
//  WikipediaViewController.swift
//  Week01
//
//  Created by Brett J. Rapp on 30/5/20.
//  Copyright © 2020 Brett J. Rapp. All rights reserved.
//

import UIKit
import WebKit

class WikipediaViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let url = URL(string: "https://en.wikipedia.org/wiki/RGB_color_model") {
            UIApplication.shared.open(url, options: [:])
        }

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
