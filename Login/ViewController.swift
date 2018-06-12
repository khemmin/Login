//
//  ViewController.swift
//  Login
//
//  Created by Kemin Suenggittawisuthi on 12/6/61.
//  Copyright © พ.ศ. 2561 Kemin Suenggittawisuthi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let emailTextField: UITextField = {
        let e = UITextField()
            e.placeholder = "Email"
            e.textColor = .white
            e.backgroundColor = .red
        return e
    }()
    
    let passwordTextField: UITextField = {
        let p = UITextField()
        p.placeholder = "Password"
        p.textColor = .white
        p.backgroundColor = .blue
        return p
    }()

    let loginButton: UIButton = {
        let l = UIButton(type: .system)
            l.setTitleColor(.white, for: .normal)
            l.setTitle("Log In", for: .normal)
            l.backgroundColor = .purple
        return l
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = GREEN_THEME
        
        setupTextFieldComponent()
        setupLoginButton()
    }
    
    fileprivate func setupTextFieldComponent()  {
        setupEmailField()
        setupPasswordField()
    }
    
    fileprivate func setupEmailField() {
        view.addSubview(emailTextField)
        
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        emailTextField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16).isActive = true
        emailTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 24).isActive = true
        emailTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -24).isActive = true
        emailTextField.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
    
    fileprivate func setupPasswordField() {
        view.addSubview(passwordTextField)
        
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 8).isActive = true
        passwordTextField.leftAnchor.constraint(equalTo: emailTextField.leftAnchor, constant: 0).isActive = true
        passwordTextField.rightAnchor.constraint(equalTo: emailTextField.rightAnchor, constant: 0).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
    
    fileprivate func setupLoginButton() {
        view.addSubview(loginButton)
        
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 8).isActive = true
        loginButton.leftAnchor.constraint(equalTo: passwordTextField.leftAnchor, constant: 0).isActive = true
        loginButton.rightAnchor.constraint(equalTo: passwordTextField.rightAnchor, constant: 0).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }

}

