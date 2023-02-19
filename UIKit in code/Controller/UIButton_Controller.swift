//
//  UIButton_Controller.swift
//  UIKit in code
//
//  Created by nelson tapia on 18-02-23.
//

import UIKit

class UIButton_Controller: UIViewController {
    
    let customButton: UIButton = {
        let b = UIButton(type: .custom)
        b.setTitle("custom", for: .normal)
        b.backgroundColor = .red
        b.translatesAutoresizingMaskIntoConstraints = false
        b.contentEdgeInsets = .init(top: 10, left: 10, bottom: 10, right: 10)
        b.addTarget(self, action: #selector(customButtonHandle), for: .touchUpInside)
        return b
    }()

    
    
    let systemButton: UIButton = {
        let b = UIButton(type: .system)
        b.setTitle("system", for: .normal)
        b.translatesAutoresizingMaskIntoConstraints = false
        b.tag = 0
        b.accessibilityIdentifier = "System button here"
        b.addTarget(self, action: #selector(anyButtonHandle), for: .touchUpInside)
        
        return b
    }()
    
    
    let detailButton: UIButton = {
        let b = UIButton(type: .detailDisclosure)
        b.translatesAutoresizingMaskIntoConstraints = false
        b.tag = 0
        b.accessibilityIdentifier = "detail button here"
        b.addTarget(self, action: #selector(anyButtonHandle), for: .touchUpInside)
        return b
    }()
    
    let addButton: UIButton = {
        let b = UIButton(type: .contactAdd)
        b.translatesAutoresizingMaskIntoConstraints = false
        b.tag = 0
        b.accessibilityIdentifier = "contact button here"
        b.addTarget(self, action: #selector(anyButtonHandle), for: .touchUpInside)
        return b
    }()
    
    let closeButton: UIButton = {
        let b = UIButton(type: .close)
        b.translatesAutoresizingMaskIntoConstraints = false
        b.tag = 0
        b.accessibilityIdentifier = "close button here"
        b.addTarget(self, action: #selector(anyButtonHandle), for: .touchUpInside)
        return b
    }()
    
    let myButton: UIButton = {
        let b = UIButton(type: .system)
        b.setTitle("My button", for: .normal)
        b.translatesAutoresizingMaskIntoConstraints = false
        b.tag = 0
        b.accessibilityIdentifier = "my button button here"
        b.addTarget(self, action: #selector(anyButtonHandle), for: .touchUpInside)
        b.backgroundColor = .purple
        b.tintColor = .white
        b.layer.cornerRadius = 200/2
        b.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        return b
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        configUI()
    }
    
    func configUI(){
        view.addSubview(customButton)
        customButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10).isActive = true
        customButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        
        view.addSubview(systemButton)
        systemButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        systemButton.centerYAnchor.constraint(equalTo: customButton.centerYAnchor).isActive = true
        
        view.addSubview(detailButton)
        detailButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10).isActive = true
        detailButton.centerYAnchor.constraint(equalTo: customButton.centerYAnchor).isActive = true
        
        view.addSubview(addButton)
        addButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        addButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        view.addSubview(closeButton)
        closeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        closeButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        
        view.addSubview(myButton)
        myButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        myButton.topAnchor.constraint(equalTo: systemButton.bottomAnchor, constant: 20).isActive = true
        myButton.heightAnchor.constraint(equalToConstant: 200).isActive = true
        myButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
    }
    
    @objc func customButtonHandle(){
        print("Custom button clic")
    }
    
    @objc func anyButtonHandle(sender: UIButton){
        print("Tag ", sender.tag)
        print("id ", sender.accessibilityIdentifier ?? "No id")
        
    }
}
