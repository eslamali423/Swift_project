//
//  MarketViewController.swift
//  Swift_Proj
//
//  Created by Eslam Ali  on 28/01/2022.
//

import UIKit

class MarketViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var tableView: UITableView!
   
    var productarray = [Product]()
        
    override func viewDidLoad() {
        super.viewDidLoad()

        productarray.append(Product.init(name: "ahmed", price: 12, description: "ahmed",img: UIImage (named: "ahmed_img")! ))
        productarray.append(Product.init(name: "mohamed", price: 12, description: "mohamd",img: UIImage (named: "ahmed_img")! ))
        productarray.append(Product.init(name: "eslam", price: 12, description: "eslam",img: UIImage (named: "ahmed_img")! ))
        productarray.append(Product.init(name: "maha", price: 12, description: "maha",img: UIImage (named: "ahmed_img")! ))
        productarray.append(Product.init(name: "nour", price: 12, description: "nour",img: UIImage (named: "ahmed_img")! ))
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productarray.count   }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "productCell") as! productTableViewCell
        let data = productarray[indexPath.row]
        cell.setUpProductCell(img: data.img, name: data.name, price: data.price, description: data.description)
        return cell
    }
    
    struct Product {
        let name: String
        let price: Double
        let description : String
        let img : UIImage
        
    }
    
}
