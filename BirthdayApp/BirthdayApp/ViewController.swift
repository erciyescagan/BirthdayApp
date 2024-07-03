//
//  ViewController.swift
//  BirthdayApp
//
//  Created by Mert Erciyes Çağan on 5/27/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var name_input: UITextField!
    @IBOutlet weak var name_field: UILabel!
    @IBOutlet weak var birthday_input: UITextField!
    @IBOutlet weak var birthday_field: UILabel!
    var name_data: String!
    var birthday_data: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        name_data = UserDefaults.standard.object(forKey: "name") as? String
        birthday_data = UserDefaults.standard.object(forKey: "birthday") as? String
        if name_data == nil {
            name_field.text = "name : "
        }
        if birthday_data == nil {
            birthday_field.text = "birthday : "
        }
        
    }

    @IBAction func saveWhenClicked(_ sender: Any) {
        
        UserDefaults.standard.set(name_input.text!, forKey: "name")
        UserDefaults.standard.set(birthday_input.text!, forKey: "birthday")
        
        name_field.text = "name : \(name_data ?? "")"
        birthday_field.text = "birthday : \(birthday_data ?? "")"
    }
    
    @IBAction func deleteWhenClicked(_ sender: Any) {
        UserDefaults.standard.removeObject(forKey: "name")
        UserDefaults.standard.removeObject(forKey: "birthday")
        
        name_field.text = "name : "
        birthday_field.text = "birthday : "
        
    }
}

