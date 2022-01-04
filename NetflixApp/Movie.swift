//
//  Movie.swift
//  NetflixApp
//
//  Created by Didar Naurzbayev on 12/23/21.
//

import Foundation

struct Movie: Identifiable {
    var id: String
    var name: String
    var thubnailURL: URL
    
    var categories: [String]
}
