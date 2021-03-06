//
//  ViewController.swift
//  TestingAppWithoutStoryBoard
//
//  Created by Syed on 06/04/2022.
//

import UIKit

class ViewController: UIViewController {
   
    lazy var loginButton: UIButton = {
        let loginButton = UIButton(type: .system)
        loginButton.setTitle("Login", for: .normal)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(loginButton)
        loginButton.addTarget(self, action: #selector(handleLoginTouchUpInside), for: .touchUpInside)
        return loginButton
    }()

    lazy var nameTextField: UITextField = {
        let nameTextField = UITextField(frame: .zero)
        nameTextField.placeholder = "Login Name"
        nameTextField.borderStyle = .roundedRect
        nameTextField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(nameTextField)
        return nameTextField
    }()
    
    lazy var passwordTextField: UITextField = {
        passwordTextField = UITextField(frame: .zero)
        passwordTextField.placeholder = "Password"
        passwordTextField.isSecureTextEntry = true
        passwordTextField.borderStyle = .roundedRect
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(passwordTextField)
        return passwordTextField
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(loginButton)
        view.addSubview(nameTextField)
        view.addSubview(passwordTextField)
        
        constraintsInit()
    }
    
    func constraintsInit() {
        NSLayoutConstraint.activate([
          loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
          loginButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
         
          passwordTextField.bottomAnchor.constraint(equalTo: loginButton.topAnchor, constant: -20),
          passwordTextField.leadingAnchor.constraint(equalTo: view.readableContentGuide.leadingAnchor, constant: 20),
          passwordTextField.trailingAnchor.constraint(equalTo: view.readableContentGuide.trailingAnchor, constant: -20),
         
          nameTextField.bottomAnchor.constraint(equalTo: passwordTextField.topAnchor, constant: -20),
          nameTextField.leadingAnchor.constraint(equalTo: view.readableContentGuide.leadingAnchor, constant: 20),
          nameTextField.trailingAnchor.constraint(equalTo: view.readableContentGuide.trailingAnchor, constant: -20)
        ])
      }
    
    @objc func handleLoginTouchUpInside() {
        print("Login has been tapped")
        if nameTextField.isFirstResponder {
            nameTextField.resignFirstResponder()
        }
        if passwordTextField.isFirstResponder {
            passwordTextField.resignFirstResponder()
        }
    }

}

// 
