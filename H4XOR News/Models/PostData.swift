//
//  PostData.swift
//  H4XOR News
//
//  Created by Marcin Mazur on 29/07/2022.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }

    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
