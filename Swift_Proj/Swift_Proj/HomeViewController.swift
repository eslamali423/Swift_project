//
//  HomeViewController.swift
//  Swift_Proj
//
//  Created by Eslam Ali  on 29/01/2022.
//

import UIKit

class HomeViewController: UIViewController , UITableViewDelegate, UITableViewDataSource{
    @IBOutlet weak var tableView: UITableView!
    var cellArray = [Data]()

    override func viewDidLoad() {
        super.viewDidLoad()

        cellArray.append(Data.init(cellName: "Eslam", cellImage: UIImage(systemName: "heart")!))
        cellArray.append(Data.init(cellName: "ahmed", cellImage: UIImage(systemName: "heart")!))
        cellArray.append(Data.init(cellName: "nour", cellImage: UIImage(systemName: "heart")!))
        cellArray.append(Data.init(cellName: "mohamed", cellImage: UIImage(systemName: "heart")!))
        cellArray.append(Data.init(cellName: "omar", cellImage: UIImage(systemName: "heart")!))
    
    
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! HomeTableViewCell
        let data = cellArray[indexPath.row]
        cell.setupCell(text: data.cellName, img: data.cellImage )
       
    return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 100
    }
    
    

    

}

struct Data {
    let cellName : String
    let cellImage : UIImage
}
