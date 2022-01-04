//
//  StandardHomeMovie.swift
//  NetflixApp
//
//  Created by Didar Naurzbayev on 12/23/21.
//

import SwiftUI
import Kingfisher

struct StandardHomeMovie: View {
    var movie: Movie
    var body: some View {
        KFImage(movie.thubnailURL)
            .resizable()
            .scaledToFill()
    }
}

struct StandardHomeMovie_Previews: PreviewProvider {
    static var previews: some View {
        StandardHomeMovie(movie: exampleMovie1)
        
    }
}
