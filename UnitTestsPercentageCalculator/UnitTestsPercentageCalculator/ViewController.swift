//
//  ViewController.swift
//  UnitTestsPercentageCalculator
//
//  Created by Jon Olivet on 11/12/17.
//  Copyright © 2017 Jon Olivet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  // MARK: - Properties
  // The top slider and a label, that represent the value of a number you want to calculate a percentage of.
  @IBOutlet weak var numberSlider: UISlider!
  @IBOutlet weak var numberLabel: UILabel!
  
  // The second slider and a label, that represent the value of the percentage.
  @IBOutlet weak var percentageSlider: UISlider!
  @IBOutlet weak var percentageLabel: UILabel!
  
  // The lowest label, showing the percentage result.
  @IBOutlet weak var resultLabel: UILabel!
  
  // MARK: - Life cycle
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  // MARK: - Methods for UIElements
  // Called when the numberSlider value is changed. It will update its value to be a whole number and calculate and display the percentage results.
  @IBAction func numberValueChanged(_ sender: UISlider) {
    numberSlider.setValue(Float(Int(numberSlider.value)), animated: true)
    let r = percentage(value: numberSlider.value, percentageSlider.value)
    updateLabels(nV: numberSlider.value, nil, r)
  }
  
  // Called when the percentageSlider value is changed. It will update its value to be a whole number and calculate and display the percentage results.
  @IBAction func percentageValueChanged(_ sender: UISlider) {
    
    percentageSlider.setValue(Float(Int(percentageSlider.value)), animated: true)
    
    let r = percentage(value: numberSlider.value, percentageSlider.value)
    updateLabels(nV: nil, percentageSlider.value, r)
  }
  
  // This will update the all the labels when one of the two sliders values has been changed.
  func updateLabels(nV: Float?, _ pV: Float?, _ rV: Float) {
    if let v = nV {
      self.numberLabel.text = "\(v)"
    }
    if let v = pV {
      self.percentageLabel.text = "\(v)%"
    }
    
    self.resultLabel.text = "\(rV)"
  }
  
  // This calculates the percentage result of two given numbers.
  func percentage(value: Float, _ percentage: Float) -> Float {
    return value * (percentage / 100)
  }
  
}

