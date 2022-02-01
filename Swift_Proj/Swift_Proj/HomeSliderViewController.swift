//
//  HomeSliderViewController.swift
//  Swift_Proj
//
//  Created by Eslam Ali  on 31/01/2022.
//

import UIKit

class HomeSliderViewController: UIViewController , UICollectionViewDelegate , UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    var imgArray = [UIImage(named: "img_cairo")!,UIImage(named: "img_dubai")!,UIImage(named: "img_amman")!,UIImage(named: "img_riyadh")!]
    var timer : Timer?
    var currentIndex = 0
    @IBOutlet weak var collectionVied: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        pageControl.numberOfPages = imgArray.count
        startTimer()
    }
    @IBOutlet weak var pageControl: UIPageControl!
    
    func startTimer (){
        timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(nextIndex), userInfo: nil, repeats: true)
    }
    
    @objc
    func nextIndex (){
        if currentIndex < imgArray.count - 1 {
            currentIndex += 1
            pageControl.currentPage
                = currentIndex
        }else {
            currentIndex = 0
            pageControl.currentPage = currentIndex
        }
      

        collectionVied.scrollToItem(at: IndexPath(item: currentIndex, section: 0), at: .centeredHorizontally, animated: true)

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
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
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
