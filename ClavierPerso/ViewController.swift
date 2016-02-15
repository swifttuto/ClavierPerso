//
//  ViewController.swift
//  ClavierPerso
//
//  Created by Yannick LORIOT on 15/02/16.
//  Copyright © 2016 Swift Tuto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var inputTextField: UITextField!

  override func viewDidLoad() {
    super.viewDidLoad()

    inputTextField.becomeFirstResponder()
  }
}

