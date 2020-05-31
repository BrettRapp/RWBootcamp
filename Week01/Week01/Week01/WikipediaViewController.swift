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
    
    @IBOutlet weak var webView: WKWebView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let url = URL(string: "https://en.wikipedia.org/wiki/RGB_color_model") {
            UIApplication.shared.open(url)
        }

    
    }

    }

