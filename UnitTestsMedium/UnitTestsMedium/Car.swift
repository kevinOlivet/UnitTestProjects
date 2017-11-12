//
//  Car.swift
//  UnitTestsMedium
//
//  Created by Jon Olivet on 11/12/17.
//  Copyright © 2017 Jon Olivet. All rights reserved.
//

import Foundation

class Car {
  
  enum CarType {
    case economy, offRoad, sport
  }
  
  enum CarTransmissionMode {
    case park, reverse, neutral, drive
  }
  
  var miles = 0
  var type: CarType
  var transmissionMode: CarTransmissionMode
  
  // MARK: - Initialization
  init(type: CarType, transmissionMode: CarTransmissionMode) {
    self.type = type
    self.transmissionMode = transmissionMode
  }
  
  // MARK: - Actions
  func start(minutes: Int) {
    var speed = 0
    if self.type == .economy && self.transmissionMode == .drive {
      speed = 35
    }
    
    if self.type == .offRoad && self.transmissionMode == .drive {
      speed = 50
    }
    
    if self.type == .sport && self.transmissionMode == .drive {
      speed = 70
    }
    self.miles = speed * (minutes / 60)
  }
  

}
