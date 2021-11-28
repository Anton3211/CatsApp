//
//  ViewController.swift
//  Cats_1Try
//
//  Created by Антон Паршин on 27.11.2021.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    

    
    @IBOutlet weak var collectionViewOne: UICollectionView!
    
    var arrayCats = ["cat0","cat1","cat2","cat3","cat4","cat5","cat6",]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionViewOne.delegate = self
        collectionViewOne.dataSource = self
        
    }
    
  
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "ShowImageVC") as? ShowImageVC else {
            return
        }
        let currentSelectedImage:String!
        currentSelectedImage = arrayCats[indexPath.row]
        vc.setImageName(name: currentSelectedImage)
       
        present(vc, animated: true, completion: nil)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
     
        return arrayCats.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as? Cell {
            
            let imageName = arrayCats[indexPath.row]
            cell.setCatImage(catName: imageName)
            return cell
        }
        return UICollectionViewCell()
    }


}

