//
//  UITextField+CloseButton.swift
//  UIKit in code
//
//  Created by nelson tapia on 18-02-23.
//

import UIKit

extension UITextField {
    func closeButton(action: Selector, parentComponent: AnyObject){
        let closeButton: UIButton = {
            let button = UIButton(type: .close)
            button.addTarget(parentComponent, action: action, for: .touchUpInside)
            return button
        }()
        
        let spacerView: UIView = {
            let view = UIView()
            view.translatesAutoresizingMaskIntoConstraints = false
            view.widthAnchor.constraint(equalToConstant: 5).isActive = true
            return view
        }()
        
        let containerCloseStackView: UIStackView = {
            let stack = UIStackView(arrangedSubviews: [closeButton, spacerView])
            return stack
        }()
        
        rightView = containerCloseStackView
        rightViewMode = .always
    }
}
