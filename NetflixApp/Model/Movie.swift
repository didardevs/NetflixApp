//
//  Movie.swift
//  NetflixApp
//
//  Created by Didar Naurzbayev on 12/23/21.
//

import Foundation
import SwiftUI

struct Movie: Identifiable {
    var id: String
    var name: String
    var thubnailURL: URL
    
    var categories: [String]
    var genre: HomeGenre = .AllGenres
    
    //Movie Detail View
    
    var year: Int
    var rating: String
    var numberOfSeasons: Int?
    
    //Personalisation
    var currentEpisode: CurrentEpisodeInfo?
    var accentColor: Color = .white
    var defaultEpisodeInfo: CurrentEpisodeInfo
    var creators: String
    var cast: String
    var moreLikeThisMovies: [Movie]
    var trailers: [Trailer]
    var previewImageName: String
    var previewVideoUrl: URL?
    
    var episode: [Episode]?
    var movieType: MovieType {
        return episode == nil ? .movie : .tvShow
    }
    var promotionHeadLine: String?
    var numberOfSeasonsDisplay: String {
        if let num = numberOfSeasons {
            if num == 1{
                return "1 season"
            } else {
                return "\(num) seasons"
            }
        }
        return ""
    }
    var episodeInfoDisplay: String {
        if let current = currentEpisode{
            return "S\(current.season): E\(current.episode) \(current.episodeName)"
        } else {
            return "S\(defaultEpisodeInfo.season): E\(defaultEpisodeInfo.episode) \(defaultEpisodeInfo.episodeName)"
        }
    }
    
    var episodeDescriptionDisplay : String {
        if let current = currentEpisode {
            return current.description
        } else {
            return defaultEpisodeInfo.description
        }
    }
}


struct CurrentEpisodeInfo: Hashable, Equatable {
    var episodeName: String
    var description: String
    var season: Int
    var episode: Int
    
}

enum MovieType {
    case movie
    case tvShow
}
