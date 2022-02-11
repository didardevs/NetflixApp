//
//  PreviewVM.swift
//  NetflixApp
//
//  Created by Didar Naurzbayev on 1/23/22.
//

import Foundation

class PreviewVM: ObservableObject {
    var movie: Movie
    
    init(movie: Movie) {
        self.movie = movie
    }
    
}
