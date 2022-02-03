//
//  LoginViewController.swift
//  Swift_Proj
//
//  Created by Eslam Ali  on 02/02/2022.
//

import UIKit
protocol UserDataDelegate {
    func userdata(username : String, password : String )
}

class LoginViewController: UIViewController {

    var userdelegate : UserDataDelegate?
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var usernameField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
    }
    
    @IBAction func loginButton(_ sender: Any) {
        let secondVC = self.storyboard?.instantiateViewController(identifier: "getDataID") as! GetDataViewController
        
        userdelegate?.userdata(username: usernameField.text!, password: passwordField.text!)
    
        secondVC.modalPresentationStyle = .fullScreen
        present(secondVC, animated: true, completion:nil)
       
        
    }
    
   

}
