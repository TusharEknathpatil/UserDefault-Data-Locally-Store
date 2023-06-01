//
//  ViewController.swift
//  UserDefault-Save-Locally
//
//  Created by Mac on 01/06/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userNameTxt: UITextField!
    @IBOutlet weak var passWordTxt: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let loginDetils = UserDefaults.standard.value(forKey: "userName")
        if loginDetils != nil {
            userNameTxt.text = UserDefaults.standard.value(forKey: "userName") as? String
            passWordTxt.text = UserDefaults.standard.value(forKey: "password") as? String
            
        } else {
            debugPrint("Not Login There")
        }
        
    }


    @IBAction func homeScreenOpen(_ sender: Any) {
        UserDefaults.standard.set(self.userNameTxt.text, forKey: "userName")
        UserDefaults.standard.set(self.passWordTxt.text, forKey: "password")
        self.performSegue(withIdentifier: "ShowDetail", sender: self)
        
    }
}

