//
//  NavigationStackViewPresentedNumber.swift
//  SwiftUIiOS16Feature
//
//  Created by Dimitri POCHERON on 16/06/2022.
//

import SwiftUI

struct NavigationStackViewPresentedNumber: View {
    @State private var presentedNumbers = [1, 4, 8]
    
    var body: some View {
        NavigationStack(path: $presentedNumbers) {
            List(1..<50) { i in
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

struct NavigationStackViewPresentedNumber_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStackViewPresentedNumber()
    }
}
