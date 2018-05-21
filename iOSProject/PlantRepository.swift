//
//  PlantRepository.swift
//  iOSProject
//
//  Created by Camila Luísa Farias on 21/05/18.
//  Copyright © 2018 Treinamento. All rights reserved.
//

import Foundation

class PlantRepository {
    static let plantRep = PlantRepository()
    var plantList : [Plant] = []
    var qtdPlant : Int = 0
    
   private init() {}
    
    func addPlant(newPlant : Plant) {
        if(plantExist(plantName: newPlant.name)){
            plantList.append(newPlant)
            self.qtdPlant = qtdPlant + 1
        }
    }
    
    func deletePlant(plantName : String){
        plantList.remove(at: getPlant(plantName: plantName))
    }
    
    func findPlantByName(plantName : String) -> Plant{
        let plantFilter = plantList.filter { (plant : Plant) -> Bool in
            plant.name == plantName
        }
        return plantFilter.first!
    }
    
    func getPlant(index : Int) -> Plant {
        var plant : Plant = Plant(name : "", especie : "", idade: 0)
        if(index >= qtdPlant){
            plant = plantList[index]
        }
        
        return plant
    }
    
    func getPlant(plantName : String) -> Int {
        var position : Int = 0
        for index in 0...qtdPlant {
            if(plantList[index].name == plantName){
                position = index
            }
        }
        return position
    }
    
    func plantExist(plantName : String) -> Bool{
        let plantFilter = plantList.filter { (plant : Plant) -> Bool in
            plant.name == plantName
        }
        return !plantFilter.isEmpty
    }
    
    func getAll() -> [Plant] {
        return plantList
    }
    
    func deleteAll() {
        plantList.removeAll()
    }
    
    
}
