//
//  ProductCollectionViewCell.swift
//  Swift_Proj
//
//  Created by Eslam Ali  on 31/01/2022.
//

import UIKit

class ProductCollectionViewCell: UICollectionViewCell {
      
    @IBOutlet weak var productImage: UIImageView!
   
    @IBOutlet weak var productName: UILabel!
    func  setupProduct(img : UIImage, name : String) {
        self.productImage.image = img
        self.productName.text = name
    }
    
    
}
