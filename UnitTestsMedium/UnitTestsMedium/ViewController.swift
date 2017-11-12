//
//  ViewController.swift
//  UnitTestsMedium
//
//  Created by Jon Olivet on 11/12/17.
//  Copyright © 2017 Jon Olivet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    
   setUpFerrari()
  }
  
  // A simple command function with side effects
  func setUpFerrari() {
    let ferrari = Car(type: .sport, transmissionMode: .drive)
    ferrari.start(minutes: 120)
    print(ferrari.miles) // 140
  }

}

