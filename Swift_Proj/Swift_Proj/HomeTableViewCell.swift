//
//  HomeTableViewCell.swift
//  Swift_Proj
//
//  Created by Eslam Ali  on 29/01/2022.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    @IBOutlet weak var cellLabel: UILabel!
    @IBOutlet weak var cellImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupCell(text: String, img: UIImage) {
        cellLabel.text=text
        cellImage.image = img
    }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
