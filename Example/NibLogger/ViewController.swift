//
//  ViewController.swift
//  NibLogger
//
//  Created by nibdevn@gmail.com on 10/10/2020.
//  Copyright (c) 2020 nibdevn@gmail.com. All rights reserved.
//

import UIKit
import NibLogger

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        NibLogger.shared.isDetailLog = true
        NibLogger.DEBUG("Debug Log")
        NibLogger.INFO("Info Log")
        NibLogger.WARN("Warn Log")
        NibLogger.ERROR("Error Log")
        NibLogger.TAG(tag: "Some Tag", "Tag Log")
        
        NibLogger.shared.isDetailLog = false
        NibLogger.DEBUG("Debug Log")
        NibLogger.INFO("Info Log")
        NibLogger.WARN("Warn Log")
        NibLogger.ERROR("Error Log")
        NibLogger.TAG(tag: "Some Tag", "Tag Log")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

