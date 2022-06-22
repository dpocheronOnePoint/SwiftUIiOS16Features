//
//  MovieDetailScreen.swift
//  SwiftUIiOS16Feature
//
//  Created by Dimitri POCHERON on 22/06/2022.
//

import SwiftUI

struct MovieDetailScreen: View {
    let movie: Movie
    
    var body: some View {
        VStack {
            Text(movie.name)
                .font(.largeTitle)
            NavigationLink("Reviews", value: [Review(text: "Good movie!")])
        }
        .navigationDestination(for: [Review].self) { reviews in
            ReviewListScreen(reviews: reviews)
        }
    }
}
