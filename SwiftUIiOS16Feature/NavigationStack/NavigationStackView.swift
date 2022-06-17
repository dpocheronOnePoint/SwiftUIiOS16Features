//
//  NavigationStackView.swift
//  SwiftUIiOS16Feature
//
//  Created by Dimitri POCHERON on 16/06/2022.
//

import SwiftUI

struct NavigationStackView: View {
    var body: some View {
        NavigationStack {
            List(1..<50) { i in
                // MARK: - Option 1
                
                //                NavigationLink {
                //                    Text("Detail \(i)")
                //                } label: {
                //                    Label("Row \(i)", systemImage: "\(i).circle")
                //                }
                
                // MARK: - Option 2
                
                NavigationLink(value: i) {
                    Label("Row \(i)", systemImage: "\(i).circle")
                }
            }
            .navigationDestination(for: Int.self) { i in
                Text("Detail \(i)")
            }
            
            
            .navigationTitle("Navigation Stack")
        }
    }
}

struct NavigationStackView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStackView()
    }
}
