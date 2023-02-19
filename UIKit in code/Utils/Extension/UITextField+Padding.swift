//
//  UITextField+Padding.swift
//  UIKit in code
//
//  Created by nelson tapia on 18-02-23.
//

import UIKit

extension UITextField {
    
    func padding(_ widthPadding: CGFloat = 10){
        leftView = UIView(frame: CGRect(x: 0, y: 0, width: widthPadding, height: 0))
        leftViewMode = .always
        rightView = UIView(frame: CGRect(x: 0, y: 0, width: widthPadding, height: 0))
        rightViewMode = .always
    }
}
