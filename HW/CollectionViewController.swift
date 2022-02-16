//
//  CollectionViewController.swift
//  HW
//
//  Created by Дмитро Вакулінський on 02.12.2021.
//

import UIKit

class CollectionViewController: UIViewController {
    
    var anotherController: ViewController = ViewController()
    
    @IBOutlet weak var CollectionView: UICollectionView!
        
   // var images: [UIImage] = []
   // var preview: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.CollectionView.reloadData()
    
    }
    
}
extension CollectionViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImageCell", for: indexPath)
            if let ImageCell = cell as? ImageCollectionViewCell{
                ImageCell.preview.image = images[indexPath.row]
            }
        return cell
        }
        
    }
    
extension CollectionViewController: UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
}

extension CollectionViewController: UINavigationControllerDelegate, UIImagePickerControllerDelegate{
    
}
