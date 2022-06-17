//
//  AutomaticExpandTexfiledView.swift
//  SwiftUIiOS16Feature
//
//  Created by Dimitri POCHERON on 17/06/2022.
//

import SwiftUI

struct AutomaticExpandTexfiledView: View {
    @State private var bio = ""
    
    var body: some View {
        TextField("Enter your bio", text: $bio, axis: .vertical)
            .textFieldStyle(.roundedBorder)
            .lineLimit(...5)
            .padding()
    }
}

struct AutomaticExpandTexfiledView_Previews: PreviewProvider {
    static var previews: some View {
        AutomaticExpandTexfiledView()
    }
}
