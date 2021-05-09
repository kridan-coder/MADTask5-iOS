//
//  ViewControllerEntry.swift
//  task5MAD
//
//  Created by KriDan on 09.05.2021.
//

import UIKit


class ViewControllerEntry: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    @IBOutlet weak var enterButton: UIButton!
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        let nextTag = textField.tag + 1
        if let nextField = textField.superview?.viewWithTag(nextTag){
            nextField.becomeFirstResponder()
        }
        else{
            textField.resignFirstResponder()
        }
        return true
    }
    
    func validate() -> Bool {
        
        guard let textEmail = emailField.text else {return false}
        guard let textPassword = passwordField.text else {return false}
        if textEmail == "", textPassword == "" {return false}
        if !textEmail.contains("@") {return false}
        
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailField.addUnderline()
        passwordField.addUnderline()
        
        emailField.delegate = self
        passwordField.delegate = self
        
        enterButton.layer.cornerRadius = 13
        
        //dada
        
        emailField.attributedPlaceholder = NSAttributedString(string: "  Email", attributes: [NSAttributedString.Key.foregroundColor: #colorLiteral(red: 0.7450980392, green: 0.7607843137, blue: 0.7607843137, alpha: 1)])
        passwordField.attributedPlaceholder = NSAttributedString(string: "  Пароль", attributes: [NSAttributedString.Key.foregroundColor: #colorLiteral(red: 0.7450980392, green: 0.7607843137, blue: 0.7607843137, alpha: 1)])
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
