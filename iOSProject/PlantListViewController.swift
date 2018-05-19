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
    
    private var plantList = Plant.createPlant()
    
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
        
        print(plantList.count)
        return plantList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt: IndexPath) -> UICollectionViewCell {
        
        let cellIdentifier = "PlantCell"
        
        var cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: cellForItemAt as IndexPath) as! PlantCollectionViewCell
        
        cell.plant = self.plantList[cellForItemAt.item]
        
        return cell
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


