//
//  TapGestureLocationView.swift
//  SwiftUIiOS16Feature
//
//  Created by Dimitri POCHERON on 16/06/2022.
//

import SwiftUI

struct TapGestureLocationView: View {
    var body: some View {
        Circle()
            .fill(.red)
            .frame(width: 100, height: 100)
            .onTapGesture(coordinateSpace: .global) { location in
                print("Tapped at \(location)")
            }
    }
}

struct TapGestureLocationView_Previews: PreviewProvider {
    static var previews: some View {
        TapGestureLocationView()
    }
}
