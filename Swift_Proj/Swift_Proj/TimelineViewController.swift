//
//  TimelineViewController.swift
//  Swift_Proj
//
//  Created by Eslam Ali  on 30/01/2022.
//

import UIKit

class TimelineViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{
   
    var postArray = [UIImage]()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        postArray.append( UIImage(named: "img_cairo")!)
        postArray.append(UIImage(named: "img_dubai")!)
        postArray.append(UIImage(named: "img_amman")!)
        postArray.append( UIImage(named: "img_riyadh")!)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return postArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  tableView.dequeueReusableCell(withIdentifier: "cell") as! TimelineTableViewCell
        let data = postArray[indexPath.row]
        cell.setUpPost(photo: data)
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let photo = postArray[indexPath.row]
        let photoWidthRatio = photo.size.width / photo.size.height
        return tableView.frame.width / photoWidthRatio
        
    }
    

}
//struct Post {
//    let Username :  String
//    let  photo : UIImage
//}
