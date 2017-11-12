//
//  Person.swift
//  SimpleUnitTests
//
//  Created by Jon Olivet on 11/12/17.
//  Copyright © 2017 Jon Olivet. All rights reserved.
//

import Foundation

// A person to test :)

struct Person {

    let name: String
    let hairColor: String?
    
    init(name: String, hairColor: String? = nil) {
        self.name = name
        self.hairColor = hairColor
    }
}
