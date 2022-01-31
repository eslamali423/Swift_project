//
//  ProductViewController.swift
//  Swift_Proj
//
//  Created by Eslam Ali  on 31/01/2022.
//

import UIKit

class ProductViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var collectionView: UICollectionView!
    var namesArray = [Product]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        namesArray.append(Product(image: UIImage(named: "img_dubai")!, name: "Dubai" ))
        namesArray.append(Product(image: UIImage(named: "img_cairo")!, name: "Cairo" ))
        namesArray.append(Product(image: UIImage(named: "img_riyadh")!, name: "Riyadh" ))
        namesArray.append(Product(image: UIImage(named: "img_amman")!, name: "Amman" ))
        namesArray.append(Product(image: UIImage(named: "img_dubai")!, name: "Dubai" ))
        namesArray.append(Product(image: UIImage(named: "img_cairo")!, name: "Cairo" ))
        namesArray.append(Product(image: UIImage(named: "img_riyadh")!, name: "Riyadh" ))
        namesArray.append(Product(image: UIImage(named: "img_amman")!, name: "Amman" ))
        namesArray.append(Product(image: UIImage(named: "img_dubai")!, name: "Dubai" ))
        namesArray.append(Product(image: UIImage(named: "img_cairo")!, name: "Cairo" ))
        namesArray.append(Product(image: UIImage(named: "img_riyadh")!, name: "Riyadh" ))
        namesArray.append(Product(image: UIImage(named: "img_amman")!, name: "Amman" ))
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return namesArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ProductCollectionViewCell
        let data = namesArray[indexPath.row]
        cell.setupProduct(img: data.image, name: data.name)
        
    
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
     return   CGSize(width: self.view.frame.width * 0.3, height: self.view.frame.height * 0.3)    }


}

struct Product {
    let image : UIImage
    let name : String
}
