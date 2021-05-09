//
//  Extensions.swift
//  task5MAD
//
//  Created by KriDan on 09.05.2021.
//

import Foundation
import UIKit

extension UITextField {
    
    func addUnderline(){
        let underline = CALayer()
        
        underline.frame = CGRect(x: 0, y: self.frame.height - 5, width: self.frame.width, height: 0.5)
        
        underline.backgroundColor = #colorLiteral(red: 0.7450980392, green: 0.7607843137, blue: 0.7607843137, alpha: 1)
        
        self.layer.addSublayer(underline)
        

    }
    
}
