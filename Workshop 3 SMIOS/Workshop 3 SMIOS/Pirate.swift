//
//  Pirate.swift
//  Workshop 3 SMIOS
//
//  Created by Bart van de Klundert on 21/02/2019.
//  Copyright © 2019 Bart van de Klundert. All rights reserved.
//

import UIKit

class Pirate: Codable {
    
    let name: String
    let life:String
    let years_active:String
    let country_of_origin:String
    let comments:String
    
    init(name: String, life: String, years_active: String, country_of_origin: String, comments: String) {
        self.name = name
        self.life = life
        self.years_active = years_active
        self.country_of_origin = country_of_origin
        self.comments = comments

    }

}
