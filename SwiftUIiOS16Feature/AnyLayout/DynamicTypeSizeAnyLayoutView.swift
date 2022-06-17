//
//  DynamicTypeSizeAnyLayoutView.swift
//  SwiftUIiOS16Feature
//
//  Created by Dimitri POCHERON on 17/06/2022.
//

import SwiftUI

struct DynamicTypeSizeAnyLayoutView: View {
    @Environment(\.dynamicTypeSize) var dynamicTypeSize
    
    var body: some View {
        let layout = dynamicTypeSize == .xxxLarge ? AnyLayout(HStack()) : AnyLayout(VStack())
        
        layout {
            Image(systemName: "1.circle")
            Image(systemName: "2.circle")
            Image(systemName: "3.circle")
        }
        .font(.largeTitle)
    }
}

struct DynamicTypeSizeAnyLayoutView_Previews: PreviewProvider {
    static var previews: some View {
        DynamicTypeSizeAnyLayoutView()
    }
}
