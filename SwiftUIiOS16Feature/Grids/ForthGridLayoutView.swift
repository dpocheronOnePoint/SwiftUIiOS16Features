//
//  ForthGridLayoutView.swift
//  SwiftUIiOS16Feature
//
//  Created by Dimitri POCHERON on 16/06/2022.
//

import SwiftUI

struct ForthGridLayoutView: View {
    var body: some View {
        Grid(horizontalSpacing: 20, verticalSpacing: 20) {
            GridRow {
                Image(systemName: "xmark")
                Image(systemName: "xmark")
                Image(systemName: "xmark")
            }
            
            GridRow {
                Image(systemName: "circle")
                Image(systemName: "xmark")
                Image(systemName: "circle")
            }
            
            GridRow {
                Image(systemName: "xmark")
                Image(systemName: "circle")
                Image(systemName: "circle")
            }
        }
        .font(.title)
    }
}

struct ForthGridLayoutView_Previews: PreviewProvider {
    static var previews: some View {
        ForthGridLayoutView()
    }
}
