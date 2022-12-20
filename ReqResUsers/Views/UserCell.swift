//
//  UserCell.swift
//  ReqResUsers
//
//  Created by Валерия Гилева on 18.12.2022.
//

import UIKit

class UserCell: UITableViewCell {
    @IBOutlet var userImage: UIImageView!
    @IBOutlet var fullNameLabel: UILabel!
    @IBOutlet var emailLable: UILabel!
    
    func configure(with user: Information) {
        fullNameLabel.text = user.fullName
        emailLable.text = user.email
        
        NetworkManager.shared.fetchImage(from: user.avatar)
        {
            [weak self] result in
            switch result {
            case .success(let imageData):
                self?.userImage.image = UIImage(data: imageData)
            case .failure(let error):
                print(error)
            }
        }
    }
}
