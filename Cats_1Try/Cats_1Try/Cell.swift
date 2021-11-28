//
//  Cell.swift
//  Cats_1Try
//
//  Created by Антон Паршин on 27.11.2021.
//

import UIKit

class Cell: UICollectionViewCell {
    
    @IBOutlet weak var catImage: UIImageView!
    
    func setCatImage(catName:String){
        catImage.image = UIImage(named: catName)
    }
    
}
