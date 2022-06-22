//
//  MovieListScreen.swift
//  SwiftUIiOS16Feature
//
//  Created by Dimitri POCHERON on 22/06/2022.
//

import SwiftUI

struct MovieListScreen: View {
    
    let movies = [Movie(name: "Spiderman"), Movie(name: "Batman")]
    
    var body: some View {
        List(movies, id: \.name) { movie in
            NavigationLink(movie.name, value: movie)
        }
        .navigationDestination(for: Movie.self) { movie in
            MovieDetailScreen(movie: movie)
        }
    }
}

struct MovieListScreen_Previews: PreviewProvider {
    static var previews: some View {
        MovieListScreen()
    }
}
