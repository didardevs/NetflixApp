//
//  Trailer.swift
//  NetflixApp
//
//  Created by Didar Naurzbayev on 1/13/22.
//

import Foundation

struct Trailer: Identifiable, Hashable{
    var id: String = UUID().uuidString
    var name : String
    var videoURL : URL
    var thubnailImageURL : URL
}
