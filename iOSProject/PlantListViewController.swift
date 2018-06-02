//
//  PlantListViewController.swift
//  iOSProject
//
//  Created by Treinamento on 19/05/2018.
//  Copyright © 2018 Treinamento. All rights reserved.
//

import UIKit

class PlantListViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate{

    @IBOutlet weak var plantCollectionView: UICollectionView!
    
    private var plantList = PlantRepository.plantRep
    
    var plantRow : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.plantCollectionView.delegate = self
        self.plantCollectionView.dataSource = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        print(plantList.qtdPlant)
        return plantList.qtdPlant
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt: IndexPath) -> UICollectionViewCell {
        
        let cellIdentifier = "PlantCell"
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: cellForItemAt as IndexPath) as! PlantCollectionViewCell
        
        cell.plant = self.plantList.getPlant(index: cellForItemAt.item)
        
        return cell
    }
    
    @IBAction func myUnwindAction(unwinSegue: UIStoryboardSegue) {
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let collectionViewStoryBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let viewController = collectionViewStoryBoard.instantiateViewController(withIdentifier: "plantInfo") as! MyPlantInfoViewController
        print(plantList.getPlant(index: indexPath.item).name)
        viewController.newPlantName = plantList.getPlant(index: indexPath.item).name
        viewController.newPlantSpecies = plantList.getPlant(index: indexPath.item).especie
        viewController.newPlantAge = String(plantList.getPlant(index: indexPath.item).especie)
        self.navigationController?.pushViewController(viewController, animated: true)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.plantCollectionView.reloadData()
    }
}
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


