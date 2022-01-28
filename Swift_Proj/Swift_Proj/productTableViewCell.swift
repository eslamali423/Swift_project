//
//  productTableViewCell.swift
//  Swift_Proj
//
//  Created by Eslam Ali  on 28/01/2022.
//

import UIKit

class productTableViewCell: UITableViewCell {

    @IBOutlet weak var productDescription: UILabel!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productImg: UIImageView!
    @IBOutlet weak var productPrice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setUpProductCell (img: UIImage, name: String, price: Double, description: String )
    {
        productName.text = name
        productPrice.text = "\(price)"
        productDescription.text = description
        productImg.image = img
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
