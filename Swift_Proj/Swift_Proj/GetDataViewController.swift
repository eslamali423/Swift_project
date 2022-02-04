//
//  GetDataViewController.swift
//  Swift_Proj
//
//  Created by Eslam Ali  on 03/02/2022.
//

import UIKit

class GetDataViewController: UIViewController , UserDataDelegate{
  

    @IBOutlet weak var username: UILabel!
    @IBOutlet weak var password: UILabel!
    
    var name = ""
    var pass = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
  
    
    
    func userdata(username: String, password: String) {
        self.username.text = username
        self.password.text = password
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
