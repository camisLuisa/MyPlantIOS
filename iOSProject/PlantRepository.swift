//
//  PlantRepository.swift
//  iOSProject
//
//  Created by Camila Luísa Farias on 21/05/18.
//  Copyright © 2018 Treinamento. All rights reserved.
//

import Foundation

class PlantRepository {
    public static let plantRep = PlantRepository()
    var plantList : [Plant] = []
    var qtdPlant : Int = 0
    
   private init() {}
    
    public func addPlant(newPlant : Plant) {
        plantList.append(newPlant)
        self.qtdPlant = qtdPlant + 1
    }
    
   // public func deletePlant(plantName : String){
      //  plantList.remove(at: getPlant(plantName: plantName))
    //}
    
    public func findPlantByName(plantName : String) -> Plant{
        let plantFilter = plantList.filter { (plant : Plant) -> Bool in
            plant.name == plantName
        }
        return plantFilter.first!
    }
    
    public func getPlant(index : Int) -> Plant {
        
        return plantList[index]
    }
    
    public func getPlant(plantName : String, callback:@escaping (_ result: Any?) -> Void) -> Int {
        var position : Int = 0
        for index in 0...qtdPlant {
            if(plantList[index].name == plantName){
                position = index
            }
        }
        return position
    }
    
   public func plantExist(plantName : String) -> Bool{
        let plantFilter = plantList.filter { (plant : Plant) -> Bool in
            plant.name == plantName
        }
        return !plantFilter.isEmpty
    }
    
    public func getAll() -> [Plant] {
        return plantList
    }
    
    public func deleteAll() {
        plantList.removeAll()
    }
    
    public func count() -> Int {
        return qtdPlant
    }
    
    
}
