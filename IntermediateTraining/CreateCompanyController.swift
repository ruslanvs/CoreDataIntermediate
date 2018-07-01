//
//  CreateCompanyController.swift
//  IntermediateTraining
//
//  Created by Ruslan Suvorov on 6/30/18.
//  Copyright © 2018 Lets Build That App. All rights reserved.
//

import UIKit

class CreateCompanyController: UIViewController {
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Name"
        label.translatesAutoresizingMaskIntoConstraints = false //enable autolayout
        return label
    }()
    
    let nameTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter name"
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        navigationItem.title = "Create Company"
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(handleCancel))
    }
    
    private func setupUI() {
        let lightBlueBackgroundView = UIView()
        view.addSubview(lightBlueBackgroundView)
        lightBlueBackgroundView.backgroundColor = .myLightBlue
        lightBlueBackgroundView.translatesAutoresizingMaskIntoConstraints = false
        lightBlueBackgroundView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        lightBlueBackgroundView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        lightBlueBackgroundView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        lightBlueBackgroundView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        view.addSubview(nameLabel)
        nameLabel.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        nameLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16).isActive = true
        nameLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        nameLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        view.addSubview(nameTextField)
        nameTextField.topAnchor.constraint(equalTo: nameLabel.topAnchor).isActive = true
        nameTextField.leftAnchor.constraint(equalTo: nameLabel.rightAnchor).isActive = true
        nameTextField.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        nameTextField.bottomAnchor.constraint(equalTo: nameLabel.bottomAnchor).isActive = true
        
    }
    
    @objc func handleCancel() {
        print("cancel hit")
        dismiss(animated: true, completion: nil)
    }
}
