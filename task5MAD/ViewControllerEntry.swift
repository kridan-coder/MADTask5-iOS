//
//  ViewControllerEntry.swift
//  task5MAD
//
//  Created by KriDan on 09.05.2021.
//

import UIKit


class ViewControllerEntry: UIViewController {
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    @IBOutlet weak var enterButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailField.addUnderline()
        passwordField.addUnderline()
        
        
        
        enterButton.layer.cornerRadius = 13
        
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
