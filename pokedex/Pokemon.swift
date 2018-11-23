//
//  Pokemon.swift
//  pokedex
//
//  Created by Roberto Evangelista da Silva Filho on 23/11/2018.
//  Copyright © 2018 Roberto Evangelista da Silva Filho. All rights reserved.
//

import Foundation
import UIKit

class Pokemon{
    var image: UIImage
    var name: String
    var description: String
    
    init(image: UIImage, name: String, description: String) {
        self.image = image
        self.name = name
        self.description = description
    }
}
