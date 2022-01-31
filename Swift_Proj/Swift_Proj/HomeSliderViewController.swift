//
//  HomeSliderViewController.swift
//  Swift_Proj
//
//  Created by Eslam Ali  on 31/01/2022.
//

import UIKit

class HomeSliderViewController: UIViewController , UICollectionViewDelegate , UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    var imgArray = [UIImage(named: "img_cairo")!,UIImage(named: "img_dubai")!,UIImage(named: "img_amman")!,UIImage(named: "img_riyadh")!]
    
    @IBOutlet weak var collectionVied: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        imgArray.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! HomeSliderCollectionViewCell
        cell.sliderImg.image = imgArray[indexPath.row]
    return cell
    }
    override func size(forChildContentContainer container: UIContentContainer, withParentContainerSize parentSize: CGSize) -> CGSize {
        CGSize(width: collectionVied.frame.width, height: collectionVied.frame.height)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
