//
//  PlantCollectionViewCell.swift
//  iOSProject
//
//  Created by Treinamento on 19/05/2018.
//  Copyright © 2018 Treinamento. All rights reserved.
//

import UIKit

class PlantCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    var plant: Plant! {
        didSet {
            self.updateUI()
        }
    }
    
    private func updateUI() {
        nameLabel.text = plant.name
    }
    
}
