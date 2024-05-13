//
//  ApiData.swift
//  Tabbar With collectionView TableView
//
//  Created by OLX on 13/05/24.
//

import Foundation

struct Post: Codable {
    let postId: Int
    let id: Int
    let name: String
    let email: String
    let body: String
}

