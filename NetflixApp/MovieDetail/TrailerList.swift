//
//  TrailerList.swift
//  NetflixApp
//
//  Created by Didar Naurzbayev on 1/14/22.
//

import SwiftUI

struct TrailerList: View {
    var trailers: [Trailer]
    let screen = UIScreen.main.bounds
    var body: some View {
        VStack{
            ForEach(trailers) { trailer in
                VStack(alignment: .leading){
                    VideoPreviewImage(imageURL: trailer.thubnailImageURL, videoURL: trailer.videoURL)
                        .frame(maxWidth: screen.width)
                    Text(trailer.name)
                        .font(.headline)
                    
                }
                .foregroundColor(.white)
                .padding(.bottom, 10)
            }
        }
    }
}

struct TrailerList_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            TrailerList(trailers: exampleTrailers)
        }
    }
}
