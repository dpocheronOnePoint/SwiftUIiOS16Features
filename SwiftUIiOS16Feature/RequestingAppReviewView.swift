//
//  RequestingAppReviewView.swift
//  SwiftUIiOS16Feature
//
//  Created by Dimitri POCHERON on 17/06/2022.
//

import SwiftUI
import StoreKit

struct RequestingAppReviewView: View {
    @Environment(\.requestReview) var requestReview
    
    var body: some View {
        Button("Review the app") {
            requestReview()
        }
    }
}

struct RequestingAppReviewView_Previews: PreviewProvider {
    static var previews: some View {
        RequestingAppReviewView()
    }
}
