//
//  ViewThatFitsView.swift
//  SwiftUIiOS16Feature
//
//  Created by Dimitri POCHERON on 10/06/2022.
//

import SwiftUI

// ViewThatFits is a new View type introduced with iOS 16. And as the name suggests, it lets SwiftUI automagically select one of the two views that best fits the available space.

struct ViewThatFitsView: View {
    var body: some View {
        ViewThatFits {
            Text("Compact version of text")
                .frame(width: 300, height: 500)
            
            Text("A really really really long long long  description of the text goes")
                .frame(width: 700, height: 500)
        }
    }
}

struct ViewThatFitsView_Previews: PreviewProvider {
    static var previews: some View {
        ViewThatFitsView()
    }
}
