//
//  ViewController.swift
//  customColletionView
//
//  Created by STC on 10/11/22.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
   
 
    
    let Pimages : [String] = ["rose","sunflower","flower1","i12","i13","i14"]
    let ImageName : [String] = ["rose","sunflower","flower1","i12","i13","i14"]
    @IBOutlet weak var CustomCollectionView2: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        CustomCollectionView2.dataSource = self
        CustomCollectionView2.delegate = self
         
        let nib = UINib(nibName: "customCollectionViewCell", bundle: nil)
        CustomCollectionView2.register(nib, forCellWithReuseIdentifier: "customCollectionViewCell")
      
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Pimages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = self.CustomCollectionView2.dequeueReusableCell(withReuseIdentifier: "customCollectionViewCell", for: indexPath) as! customCollectionViewCell
        cell.images.image = UIImage(named: Pimages[indexPath.row])
        cell.label1.text = ImageName[indexPath.row]
        
        cell.backgroundColor = .yellow
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 130, height: 150)
    }
}

