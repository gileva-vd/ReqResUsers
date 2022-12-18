//
//  UsersViewController.swift
//  ReqResUsers
//
//  Created by Валерия Гилева on 18.12.2022.
//

import UIKit

class UsersViewController: UITableViewController {
    
    private var users: [User] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 100
        fetchUsers()
    }
    
    // MARK: - Table view data source
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return users.count
//    }
//
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        guard
//            let cell = tableView.dequeueReusableCell(
//                withIdentifier: "cell",
//                for: indexPath
//            ) as? UserCell
//        else {
//            return UITableViewCell()
//        }
//
//        let user = users[indexPath.row]
//        cell.configure(with: user)
//
//        return cell
//    }
}

// MARK: - Networking
extension UsersViewController {
    func fetchUsers() {
        NetworkManager.shared.fetch(User.self, from: "https://reqres.in/api/users?page=2") {
            [weak self] result in
            switch result {
            case .success(let users):
                print(users)
//                self?.users = users.data
//                self?.tableView.reloadData()
                self?.successAlert()
            case .failure(let error):
                print(error)
                self?.failedAlert()
            }
        }
    }
    // MARK: - Private Methods
    private func successAlert() {
        DispatchQueue.main.async {
            let alert = UIAlertController(
                title: "Success",
                message: "You can see the results in the Debug aria",
                preferredStyle: .alert
            )
            
            let okAction = UIAlertAction(title: "OK", style: .default)
            alert.addAction(okAction)
            self.present(alert, animated: true)
        }
    }
    
    private func failedAlert() {
        DispatchQueue.main.async {
            let alert = UIAlertController(
                title: "Failed",
                message: "You can see error in the Debug aria",
                preferredStyle: .alert
            )
            
            let okAction = UIAlertAction(title: "OK", style: .default)
            alert.addAction(okAction)
            self.present(alert, animated: true)
        }
    }
}
