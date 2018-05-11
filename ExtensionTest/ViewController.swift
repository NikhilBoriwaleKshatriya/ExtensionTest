//
//  ViewController.swift
//  ExtensionTest
//
//  Created by nikhil boriwale on 2/26/18.
//  Copyright © 2018 infostretch. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var conformpassword: UITextField!
    @IBOutlet weak var gmail: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       self.name.applyPadding()
        self.password.applyPadding()
        self.conformpassword.applyPadding()
        self.gmail.applyPadding()
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
        
    }
    

}
extension UITextField
{
    func applyPadding()
         {
         let Paddingview = UIView(frame:CGRect(x: 0, y: 0, width: 10, height: 30))
            self.leftView = Paddingview
            self.leftViewMode = UITextFieldViewMode.always
    }
   
}

