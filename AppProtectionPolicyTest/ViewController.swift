//
//  ViewController.swift
//  AppProtectionPolicyTest
//
//  Created by Quinn Fagan on 2018-01-08.
//  Copyright © 2018 Bluink. All rights reserved.
//

import UIKit
import IntuneMAM

class ViewController: UIViewController {
    @IBOutlet weak var hw: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let x = IntuneMAMEnrollmentStatus.init().didSucceed
        let y = IntuneMAMPolicyManager.init().isManagementEnabled()
        hw.text = "Did enrollment satus succeed: " + String(describing: x) + "\n"
        hw.text = hw.text! + "Is management enabled: " + String(describing: y) + "\n"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

        // Dispose of any resources that can be recreated.
    }


}

