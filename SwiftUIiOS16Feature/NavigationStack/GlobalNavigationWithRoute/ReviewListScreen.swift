//
//  ReviewListScreen.swift
//  SwiftUIiOS16Feature
//
//  Created by Dimitri POCHERON on 22/06/2022.
//

import SwiftUI

struct ReviewListScreen: View {
    let reviews: [Review]
    
    var body: some View {
        List(reviews, id: \.text) { review in
            Text(review.text)
        }
    }
}
