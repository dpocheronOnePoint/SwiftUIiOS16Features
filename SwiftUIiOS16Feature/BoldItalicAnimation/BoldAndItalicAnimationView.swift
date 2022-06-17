//
//  BoldAndItalicAnimation.swift
//  SwiftUIiOS16Feature
//
//  Created by Dimitri POCHERON on 17/06/2022.
//

import SwiftUI

struct BoldAndItalicAnimationView: View {
    @State private var useBold = false
    @State private var useItalic = false
    @State private var useRed = false
    
    var body: some View {
        VStack {
            Text("Welcome to SwiftUI 4.0")
                .bold(useBold)
                .italic(useItalic)
                .foregroundColor(useRed ? .red : .black)
                .onTapGesture {
                    withAnimation {
//                        useBold.toggle()
//                        useItalic.toggle()
                        useRed.toggle()
                    }
                }
            
            
        }
    }
}

struct BoldAndItalicAnimation_Previews: PreviewProvider {
    static var previews: some View {
        BoldAndItalicAnimationView()
    }
}
