//
//  StatusTableViewCell.swift
//  Swift_Proj
//
//  Created by Eslam Ali  on 01/02/2022.
//

import UIKit

class StatusTableViewCell: UITableViewCell , UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    @IBOutlet weak var title: UILabel!
    var photoArray = [UIImage]()
    
    @IBOutlet weak var collectionView: UICollectionView!
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setupCell(title : String, photos : [UIImage]){
        self.title.text = title
        self.photoArray = photos
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photoArray.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CVcell", for: indexPath) as! StatusCollectionViewCell
        let data = photoArray[indexPath.row]
        cell.img.image = data
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: collectionView.frame.width * 0.3, height: collectionView.frame.width * 0.3)
    }

}
