//
//  ShareLinksView.swift
//  SwiftUIiOS16Feature
//
//  Created by Dimitri POCHERON on 10/06/2022.
//

import SwiftUI

struct ShareLinksView: View {
    let link = URL(string: "https://www.google.com")!
    
    var body: some View {
        VStack(spacing: 10) {
            ShareLink(item: link)
            
            ShareLink(item: link) {
                Text("Share Without Icon")
            }
            
            ShareLink(item: link) {
                Label("Share With Custom Icon", systemImage: "arrow.up")
            }
            .presentationDetents([.medium, .large])
        }
    }
}

struct ShareLinksView_Previews: PreviewProvider {
    static var previews: some View {
        ShareLinksView()
    }
}
