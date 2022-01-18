//
//  ComingSoonVM.swift
//  NetflixApp
//
//  Created by Didar Naurzbayev on 1/17/22.
//

import Foundation

class ComingSoonVM: ObservableObject {
    @Published var movies: [Movie] = []
    
    init() {
        self.movies = generateMovies(20)
    }
}
