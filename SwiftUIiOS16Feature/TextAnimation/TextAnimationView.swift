//
//  TextAnimationView.swift
//  SwiftUIiOS16Feature
//
//  Created by Dimitri POCHERON on 17/06/2022.
//

import SwiftUI

struct TextAnimationView: View {
    @State private var useBlack = false
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .font(.largeTitle)
            .fontWeight(useBlack ? .black : .ultraLight)
            .onTapGesture {
                withAnimation {
                    useBlack.toggle()
                }
            }
        
    }
}

struct TextAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        TextAnimationView()
    }
}
