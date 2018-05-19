//
//  Plant.swift
//  iOSProject
//
//  Created by Treinamento on 19/05/2018.
//  Copyright © 2018 Treinamento. All rights reserved.
//

import Foundation

class Plant {
    
    var name : String
    var especie : String
    var idade : Int
    
    init(name : String, especie : String, idade : Int) {
        self.name = name
        self.especie = especie
        self.idade = idade
    }
    
    static func createPlant() -> [Plant] {
        
        return [Plant(name: "Florzinha",especie: "Orquidia",idade: 1), Plant(name: "Carnivora",especie: "Carnivora",idade: 3), Plant(name: "Samba",especie: "samambaia",idade: 4)]
    }
    
}
