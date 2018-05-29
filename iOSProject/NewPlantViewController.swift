//
//  NewPlantViewController.swift
//  iOSProject
//
//  Created by Camila Luísa Farias on 29/05/18.
//  Copyright © 2018 Treinamento. All rights reserved.
//

import UIKit

class NewPlantViewController: ViewController {

    @IBOutlet weak var newPlantNameText: UITextField!
    @IBOutlet weak var newPlantSpeciesText: UITextField!
    @IBOutlet weak var newPlantAgeText: UITextField!
    
    var newPlantName : String = ""
    var newPlantSpecies : String = ""
    var newPlantAge : Int = 0
    
    var repPlant = PlantRepository.plantRep
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func createNewPlant(_ sender: Any) {
        newPlantName = newPlantNameText.text!
        newPlantSpecies = newPlantSpeciesText.text!
        var plant = Plant(name: newPlantName,especie: newPlantSpecies,idade: newPlantAge)
        repPlant.addPlant(newPlant: plant)
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
