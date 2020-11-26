//
//  FaqViewController.swift
//  TrucoVIPER
//
//  Created by Andres Macagno on 26/11/2020.
//

import Foundation
import UIKit

internal class FaqViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        self.titleLabel.text = "Probando segundo ViewController"
    }
}
