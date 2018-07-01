//  CompaniesVC.swift

import UIKit

class CompaniesVC: UITableViewController {

    let companies = [
        Company(name: "Apple", foundedDate: Date()),
        Company(name: "Google", foundedDate: Date()),
        Company(name: "Amazon", foundedDate: Date()),
        Company(name: "Facebook", foundedDate: Date())
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(HomeCell.self, forCellReuseIdentifier: "homeCell")
        view.backgroundColor = .white
        navigationItem.title = "Companies"
        tableView.backgroundColor = .myDeepBlue
        tableView.separatorColor = .white
        tableView.tableFooterView = UIView()
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "plus").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleAddCompany))
    }
    
    @objc func handleAddCompany() {
        print("handleAddCompany() fired")
        let createCompanyController = CreateCompanyController()
        let navController = LightNavigationController(rootViewController: createCompanyController)
        present(navController, animated: true, completion: nil)
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView()
        view.backgroundColor = .myLightBlue
        return view
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return companies.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "homeCell", for: indexPath) as! HomeCell
        let company = companies[indexPath.row]
        cell.textLabel?.text = company.name
        return cell
    }
    
    
}








