//
//  UIView_Controller.swift
//  UIKit in code
//
//  Created by nelson tapia on 18-02-23.
//

import UIKit

class UIView_Controller: UIViewController {
    
    let redView: UIView = {
        let v = UIView()
        v.backgroundColor = .red
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    let blueView: UIView = {
        let b = UIView()
        b.backgroundColor = .blue
        b.translatesAutoresizingMaskIntoConstraints = false
        return b
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        view.addSubview(redView)
        redView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        redView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        redView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        redView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        redView.addSubview(blueView)

        blueView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        blueView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        blueView.centerYAnchor.constraint(equalTo: redView.centerYAnchor).isActive = true
        blueView.centerXAnchor.constraint(equalTo: redView.centerXAnchor).isActive = true
    }
}
