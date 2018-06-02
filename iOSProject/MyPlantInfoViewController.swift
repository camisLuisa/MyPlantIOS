//
//  MyPlantInfoViewController.swift
//  iOSProject
//
//  Created by Treinamento on 02/06/2018.
//  Copyright © 2018 Treinamento. All rights reserved.
//

import UIKit

class MyPlantInfoViewController: ViewController {
    
    var newPlantName : String = ""
    var newPlantSpecies : String = ""
    var newPlantAge : String = ""
    var repPlant = PlantRepository.plantRep
    var plantRow : Int = 0

    @IBOutlet weak var plantNameInfo: UILabel!
    @IBOutlet weak var plantSpeciesInfo: UILabel!
    @IBOutlet weak var plantAgeInfo: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      //  var plant1 = repPlant.getPlant(index: plantRow)
        plantNameInfo.text = newPlantName
        plantSpeciesInfo.text = newPlantSpecies
        plantAgeInfo.text = newPlantAge
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
   }
    
    override func viewWillAppear(_ animated: Bool) {
        self.reloadInputViews()
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
