//
//  VariableSFSymbolsView.swift
//  SwiftUIiOS16Feature
//
//  Created by Dimitri POCHERON on 13/06/2022.
//

import SwiftUI

struct VariableSFSymbolsView: View {
    @State private var value = 0.0
    
    var body: some View {
        VStack {
            Image(systemName: "wifi", variableValue: value)
                .font(.system(size: 60))
        }
        .task {
            while true {
                try! await Task.sleep(nanoseconds: 1_000_000_000)
                
                if value < 1.0 {
                    value += 0.3
                } else {
                    value = 0.0
                }
            }
        }
    }
}

struct VariableSFSymbolsView_Previews: PreviewProvider {
    static var previews: some View {
        VariableSFSymbolsView()
    }
}
