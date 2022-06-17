//
//  MutipleNavigationDestination.swift
//  SwiftUIiOS16Feature
//
//  Created by Dimitri POCHERON on 16/06/2022.
//

import SwiftUI

struct MutipleNavigationDestination: View {
    @State private var navigationPath = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $navigationPath) {
            
            NavigationLink(value: "Example String") {
                Text("Tap Me")
            }
            
            List(1..<50) { i in
                NavigationLink(value: i) {
                    Label("Row \(i)", systemImage: "\(i).circle")
                }
            }
            .navigationDestination(for: Int.self) { i in
                Text("Detail \(i)")
            }
            .navigationDestination(for: String.self) { s in
                Text("String: \(s)")
            }
            
            .navigationTitle("Navigation Stack")
        }
    }
}

struct MutipleNavigationDestination_Previews: PreviewProvider {
    static var previews: some View {
        MutipleNavigationDestination()
    }
}
