//
//  ViewController.swift
//  Swift_Proj
//
//  Created by Eslam Ali  on 27/01/2022.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var forgetpasswordlabel: UILabel!
    @IBOutlet weak var passwordfield: UITextField!
    @IBOutlet weak var usernamefiled: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        usernamefiled.delegate = self
        passwordfield.delegate =  self

    }
    @IBAction func loginButton(_ sender : Any){
        if usernamefiled.hasText && passwordfield.hasText {
            titleLabel.text="registed"
            view.endEditing(true)


        }else{
            titleLabel.text="not registed"

        }
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == usernamefiled {
            passwordfield.becomeFirstResponder()
        }else {
            view.endEditing(true)

        }
        return true;
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
}

