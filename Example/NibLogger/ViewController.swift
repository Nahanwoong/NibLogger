//
//  ViewController.swift
//  LOG
//
//  Created by nibdevn@gmail.com on 10/10/2020.
//  Copyright (c) 2020 nibdevn@gmail.com. All rights reserved.
//

import UIKit
import NibLogger

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        LOG.shared.isDetailLog = true
        LOG.DEBUG("Debug Log")
        LOG.INFO("Info Log")
        LOG.WARN("Warn Log")
        LOG.ERROR("Error Log")
        LOG.TAG(tag: "Some Tag", "Tag Log")
        
        LOG.shared.isDetailLog = false
        LOG.DEBUG("Debug Log")
        LOG.INFO("Info Log")
        LOG.WARN("Warn Log")
        LOG.ERROR("Error Log")
        LOG.TAG(tag: "Some Tag", "Tag Log")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

