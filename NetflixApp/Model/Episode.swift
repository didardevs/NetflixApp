//
//  Episode.swift
//  NetflixApp
//
//  Created by Didar Naurzbayev on 1/4/22.
//

import Foundation

struct Episode: Identifiable {
    var id = UUID().uuidString
    var name: String
    var season: Int
    var episodeNumber: Int
    var thubnailImageURLString: String
    var description: String
    var length: Int
    var videoURL: URL
    
    var thubnailURL: URL{
        return URL(string: thubnailImageURLString)!
    }
}
