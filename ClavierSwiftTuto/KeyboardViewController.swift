//
//  KeyboardViewController.swift
//  ClavierSwiftTuto
//
//  Created by Yannick LORIOT on 15/02/16.
//  Copyright © 2016 Swift Tuto. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {
  @IBOutlet var nextKeyboardButton: UIButton!

  override func viewDidLoad() {
    super.viewDidLoad()

    let keyboardNib  = UINib(nibName: "KeyboardView", bundle: nil)

    if let keyboardView = keyboardNib.instantiateWithOwner(self, options: nil).first as? UIView {
      view.addSubview(keyboardView)
    }

    self.nextKeyboardButton.addTarget(self, action: "advanceToNextInputMode", forControlEvents: .TouchUpInside)
  }

  @IBAction func swiftTouchedAction(sender: AnyObject) {
    let proxy = self.textDocumentProxy

    proxy.insertText("Swift")
  }

  @IBAction func tutoTouchedAction(sender: AnyObject) {
    let proxy = self.textDocumentProxy

    proxy.insertText("Tuto")
  }
}
