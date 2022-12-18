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
    
    func configure(with user: User) {
        //fullNameLabel.text = user.data
       // emailLable.text = user.data
        
//        NetworkManager.shared.fetchImage(from: user.data?.avatar)
//        {
//            [weak self] result in
//            switch result {
//            case .success(let imageData):
//                self?.userImage.image = UIImage(data: imageData)
//            case .failure(let error):
//                print(error)
//            }
//        }
    }
}
