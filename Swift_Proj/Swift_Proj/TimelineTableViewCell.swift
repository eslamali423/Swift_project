//
//  TimelineTableViewCell.swift
//  Swift_Proj
//
//  Created by Eslam Ali  on 30/01/2022.
//

import UIKit

class TimelineTableViewCell: UITableViewCell {
 
    @IBOutlet weak var username: UILabel!
    
    @IBOutlet weak var photo: UIImageView!
    
    @IBAction func likeBtn(_ sender: Any) {
    }
    
    func setUpPost( photo : UIImage) {
        self.photo.image = photo
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
