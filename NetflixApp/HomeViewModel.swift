//
//  HomeViewModel.swift
//  NetflixApp
//
//  Created by Didar Naurzbayev on 12/23/21.
//

import Foundation


class HomeVM: ObservableObject {
    // String == Category
    @Published var movies: [String: [Movie]] = [:]
    
    public var allCategories: [String] {
        movies.keys.map ({ String($0) })
    }
    
    public func getMovie(forCat cat: String) -> [Movie]{
        return movies[cat] ?? []
    }
    
    init() {
        setupMovies()
    }
    
    func setupMovies(){
        movies["Trending Now"] = exampleMovies
        movies["Stand-Up Commedy"] = exampleMovies.shuffled()
        movies["New Releases"] = exampleMovies.shuffled()
        movies["Watch It Again"] = exampleMovies.shuffled()
        movies["Sci-Fi Movies"] = exampleMovies.shuffled()
    }
}
