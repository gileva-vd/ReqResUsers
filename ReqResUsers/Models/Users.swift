//
//  Users.swift
//  ReqResUsers
//
//  Created by Валерия Гилева on 18.12.2022.
//
import Foundation

struct User: Decodable {
    let data: [Information]?
}
struct Information: Decodable {
    let id: Int?
    let email: String?
    let firstName: String?
    let lastName: String?
    let avatar: String?
    
    var fullName: String {
        "\(firstName ?? "Иван") \(lastName ?? "Иванович")"
    }
}



