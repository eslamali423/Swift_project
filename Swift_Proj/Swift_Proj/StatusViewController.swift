//
//  StatusViewController.swift
//  Swift_Proj
//
//  Created by Eslam Ali  on 01/02/2022.
//

import UIKit

class StatusViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {

    var countryArray = [Country]()
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate =  self
        tableView.dataSource =  self

        title = "My Products"
        
        
        countryArray.append(Country(name: "Cairo", Photo: [UIImage(named: "img_cairo")!,UIImage(named: "img_cairo")!,UIImage(named: "img_cairo")!,UIImage(named: "img_cairo")!,UIImage(named: "img_cairo")!]))
        
        countryArray.append(Country(name: "Amman", Photo: [UIImage(named: "img_cairo")!,UIImage(named: "img_amman")!,UIImage(named: "img_riyadh")!,UIImage(named: "img_cairo")!,UIImage(named: "img_cairo")!]))
        
        countryArray.append(Country(name: "Dubai", Photo: [UIImage(named: "img_cairo")!,UIImage(named: "img_dubai")!,UIImage(named: "img_riyadh")!,UIImage(named: "img_amman")!,UIImage(named: "img_cairo")!]))
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countryArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TVcell", for: indexPath) as! StatusTableViewCell
        let data  =  countryArray[indexPath.row]
        cell.setupCell(title: data.name, photos: data.Photo)
       
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let secondViewController =  self.storyboard?.instantiateViewController(identifier: "secondVC")
//        navigationController?.pushViewController(secondViewController!, animated: true)
//    }
    


}

struct Country {
    let    name : String
    let Photo : [UIImage]
}
