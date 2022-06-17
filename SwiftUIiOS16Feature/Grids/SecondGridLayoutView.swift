//
//  SecondGridLayoutView.swift
//  SwiftUIiOS16Feature
//
//  Created by Dimitri POCHERON on 16/06/2022.
//

import SwiftUI

struct SecondGridLayoutView: View {
    @State private var redScore = 0
    @State private var blueScore = 0
    
    var body: some View {
        Grid {
            GridRow {
                Text("Red")
                
                ForEach(0..<redScore, id: \.self) { _ in
                    Rectangle()
                        .fill(.red)
                        .frame(width: 20, height: 20)
                }
            }
            
            GridRow {
                Text("Blue")
                
                ForEach(0..<blueScore, id: \.self) { _ in
                    Rectangle()
                        .fill(.blue)
                        .frame(width: 20, height: 20)
                }
            }
            
            Button("Red Scored") { redScore += 1 }
            Button("Blue Scored") { blueScore += 1 }
        }
    }
}

struct SecondGridLayoutView_Previews: PreviewProvider {
    static var previews: some View {
        SecondGridLayoutView()
    }
}
