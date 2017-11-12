//
//  ViewController.swift
//  SimpleUnitTests
//
//  Created by Jon Olivet on 11/12/17.
//  Copyright © 2017 Jon Olivet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    // Simple test for if number is even
    func isNumberEven(num: Int) -> Bool {
        return num % 2 == 0
    }
    
    // Should sum the even numbers of a Fibonacci sequence up to a limit
    func sumEvenValuedNumbersFibonacciSequence(limit: Int) -> Int {
        var sum = 0
        var a = 1
        var b = 1
        while b < limit {
            if b % 2 == 0 {
                sum += b
            }
            let h = a + b
            a = b
            b = h
        }
        return sum
    }
    
    // Imaginary case involving coins in a game
    func getGameCoinAmout(gamePrice: Int) -> Int? {
        let gameRewardCoinAmtPercentage = 1
        let decimal = Double(gameRewardCoinAmtPercentage) / 100
        return Int(Double(gamePrice) * decimal)
    }

}

