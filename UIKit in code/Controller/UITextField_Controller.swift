//
//  UITextField_Controller.swift
//  UIKit in code
//
//  Created by nelson tapia on 18-02-23.
//

import UIKit

final class UITextField_Controller: UIViewController {
    
    private let borderTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.gray.cgColor
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        textField.leftViewMode = .always
        textField.rightView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        textField.rightViewMode = .always
        textField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        textField.placeholder = "TextField border"
        textField.layer.cornerRadius = 5
        textField.keyboardAppearance = .dark
        textField.keyboardType = .numberPad
        return textField
    }()
    private let clearFieldSelector = #selector(clearTextField(_:))
    
    private lazy var backgroudColorTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .systemGray6
        textField.padding()
        textField.closeButton(action: clearFieldSelector, parentComponent: self)
        textField.rightViewMode = .always
        textField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        textField.placeholder = "Background color border"
        textField.layer.cornerRadius = 5
        return textField
    }()
    
    private lazy var blueColorTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .systemBlue.withAlphaComponent(0.2)
        textField.padding()
        textField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        textField.placeholder = "Background color border"
        textField.closeButton(action: clearFieldSelector, parentComponent: self)
        textField.layer.cornerRadius = 5
        textField.textColor = UIColor.systemBlue
        let placeHolder = textField.placeholder ?? String()
        let colorPlaceHolder = UIColor.systemBlue.withAlphaComponent(0.4)
        textField.attributedPlaceholder = NSAttributedString(string: placeHolder, attributes: [NSAttributedString.Key.foregroundColor: colorPlaceHolder])
        return textField
    }()
    
    private let greenBorderTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.systemGreen.cgColor
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        textField.leftViewMode = .always
        textField.rightView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        textField.rightViewMode = .always
        textField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        textField.placeholder = "TextField Green border"
        return textField
    }()
    
    private let shadowTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.cornerRadius = 5
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        textField.leftViewMode = .always
        textField.rightView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        textField.rightViewMode = .always
        textField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        textField.placeholder = "Shadow Place Holder"
        textField.layer.shadowColor = UIColor.gray.withAlphaComponent(0.5).cgColor
        textField.layer.shadowOpacity = 0.9
        textField.layer.shadowOffset = .zero
        textField.layer.shadowRadius = 3
        textField.backgroundColor = UIColor.white
        return textField
    }()
    
    private let shadowClassTextField: PaddingTextField = {
        let textField = PaddingTextField(with: 10)
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.cornerRadius = 5
        textField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        textField.placeholder = "Shadow Class Place Holder"
        textField.layer.shadowColor = UIColor.gray.withAlphaComponent(0.5).cgColor
        textField.layer.shadowOpacity = 0.9
        textField.layer.shadowOffset = .zero
        textField.layer.shadowRadius = 3
        textField.backgroundColor = UIColor.white
        return textField
    }()
    
    private let shadowExtensionTextField: UITextField = {
        let textField = UITextField()
        textField.padding()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.cornerRadius = 5
        textField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        textField.placeholder = "Shadow Extension Place Holder"
        textField.layer.shadowColor = UIColor.gray.withAlphaComponent(0.5).cgColor
        textField.layer.shadowOpacity = 0.9
        textField.layer.shadowOffset = .zero
        textField.layer.shadowRadius = 3
        textField.backgroundColor = UIColor.white
        return textField
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        confifUI()
    }
    
    private func confifUI() {
        title = "Text Field desde code"
        view.backgroundColor = .white
        
        view.addSubview(borderTextField)
        borderTextField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        borderTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        borderTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        borderTextField.addTarget(self, action: #selector(textFieldDidBeginEditing), for: .editingChanged)
        
        view.addSubview(backgroudColorTextField)
        backgroudColorTextField.topAnchor.constraint(equalTo: borderTextField.bottomAnchor, constant: 10).isActive = true
        backgroudColorTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        backgroudColorTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        backgroudColorTextField.delegate = self
        backgroudColorTextField.addTarget(self, action: #selector(textFieldShouldReturn), for: .editingDidEnd)
        
        view.addSubview(blueColorTextField)
        blueColorTextField.topAnchor.constraint(equalTo: backgroudColorTextField.bottomAnchor, constant: 10).isActive = true
        blueColorTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        blueColorTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        
        view.addSubview(greenBorderTextField)
        greenBorderTextField.topAnchor.constraint(equalTo: blueColorTextField.bottomAnchor, constant: 10).isActive = true
        greenBorderTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        greenBorderTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        
        view.addSubview(shadowTextField)
        shadowTextField.topAnchor.constraint(equalTo: greenBorderTextField.bottomAnchor, constant: 10).isActive = true
        shadowTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        shadowTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        
        view.addSubview(shadowClassTextField)
        shadowClassTextField.topAnchor.constraint(equalTo: shadowTextField.bottomAnchor, constant: 10).isActive = true
        shadowClassTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        shadowClassTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        
        view.addSubview(shadowExtensionTextField)
        shadowExtensionTextField.topAnchor.constraint(equalTo: shadowClassTextField.bottomAnchor, constant: 10).isActive = true
        shadowExtensionTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        shadowExtensionTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
    }
    
    @objc private func clearTextField(_ button: UIButton){
        guard
            let stack = button.superview,
            let textField = stack.superview as? UITextField
        else { return }
        
        textField.text = String()
    }
}

//obtener los valores delegados

extension UITextField_Controller: UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        guard let text = textField.text, !text.isEmpty else { return }
        print(text)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        textField.text = String()
        return true
    }
}
