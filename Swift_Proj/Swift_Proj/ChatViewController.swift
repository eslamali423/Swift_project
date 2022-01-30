//
//  ChatViewController.swift
//  Swift_Proj
//
//  Created by Eslam Ali  on 29/01/2022.
//

import UIKit

class ChatViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var contactName: UITextField!
    var namesArray = [String]()
    
    
    
    @IBAction func insertBtn(_ sender: Any) {
        if let text = contactName.text
        {
            namesArray.append(text)
            let index = IndexPath(row: namesArray.count - 1, section: 0)
            tabelView.beginUpdates()
            tabelView.insertRows(at: [index], with: .automatic)
            tabelView.endUpdates()
            contactName.text=""
        }
        
    }
    @IBAction func editBtn(_ sender: Any) {
        tabelView.isEditing = !tabelView.isEditing

    }
    @IBOutlet weak var tabelView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return namesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tabelView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = namesArray[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        namesArray.swapAt(sourceIndexPath.row, destinationIndexPath.row)
        
    }
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleteAction = UIContextualAction(style: .destructive, title: "Delete") { (action, view, deleteHandler) in
            self.namesArray.remove(at: indexPath.row)
            tableView.beginUpdates()
            tableView.deleteRows(at: [indexPath], with: .automatic)
            tableView.endUpdates()
            deleteHandler(true)
        
        }
        let favAction = UIContextualAction(style: .normal, title: "fav") { (action, view, favHandler) in
            tableView.beginUpdates()
            action.image = UIImage (systemName: "heart.fill")
            tableView.endUpdates()
            favHandler(true)
            tableView.reloadData()
            
        }
        deleteAction.image = UIImage (systemName: "trash")
        favAction.image = UIImage (systemName: "heart")

        return UISwipeActionsConfiguration(actions: [deleteAction,favAction])
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
