//
//  CreateCompanyController.swift
//  IntermediateTraining
//
//  Created by Ruslan Suvorov on 6/30/18.
//  Copyright © 2018 Lets Build That App. All rights reserved.
//

import UIKit

class CreateCompanyController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Create Company"
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(handleCancel))
        
        view.backgroundColor = .yellow
    }
    
    @objc func handleCancel() {
        print("cancel hit")
        dismiss(animated: true, completion: nil)
    }
}
