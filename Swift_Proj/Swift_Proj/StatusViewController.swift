//
//  StatusViewController.swift
//  Swift_Proj
//
//  Created by Eslam Ali  on 28/01/2022.
//

import UIKit

class StatusViewController: UIViewController ,UITableViewDelegate, UITableViewDataSource {
    var arrayOfNames = ["Eslam Ali", "Ahmed Ashraf" , "Nour Essam", "Ahmed Alshrif",
                        "Maha Sabry","Esraa Ali", "Ranna Mohamed"]
    @IBOutlet weak var tableView: UITableView!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfNames.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = arrayOfNames[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        arrayOfNames[indexPath.row] = arrayOfNames[indexPath.row] + "pressed" 
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
