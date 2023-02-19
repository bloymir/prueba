//
//  UILabel_Controller.swift
//  UIKit in code
//
//  Created by nelson tapia on 18-02-23.
//

import UIKit

class UILabel_Controller: UIViewController {
    
    private let myLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Hello World "
        label.font = UIFont.boldSystemFont(ofSize: 30)
        label.layer.borderWidth = 1
        label.layer.borderColor = UIColor.red.cgColor
        label.heightAnchor.constraint(equalToConstant: 40).isActive = true
        label.widthAnchor.constraint(equalToConstant: 250).isActive = true
        label.backgroundColor = .purple
        label.textColor = .white
        label.textAlignment = .center
        label.layer.cornerRadius = 10
        label.layer.masksToBounds = true
        return label
    }()
    
    private let myLabel2: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries"
        label.numberOfLines = 0
        label.textAlignment = .justified
        return label
    }()
    
    private let myLabel3: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Hello Universo"
        label.font = UIFont.systemFont(ofSize: 40, weight: .light)

        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        configUI()
       
        
    }
    
    private func configUI(){
        view.backgroundColor = .white
        
        view.addSubview(myLabel)
        myLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        myLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        view.addSubview(myLabel2)
        myLabel2.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        myLabel2.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        myLabel2.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        myLabel2.rightAnchor.constraint(equalTo: view.rightAnchor, constant:  -10).isActive = true
        
        view.addSubview(myLabel3)
        myLabel3.topAnchor.constraint(equalTo: myLabel2.bottomAnchor, constant: 100).isActive = true
        myLabel3.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
}
