//
//  BottomSheetView.swift
//  SwiftUIiOS16Feature
//
//  Created by Dimitri POCHERON on 10/06/2022.
//

import SwiftUI

struct BottomSheetView: View {
    @State private var isPresented = false
    
    var body: some View {
        Button{
            isPresented.toggle()
        } label: {
            Label{
                Text("View Details")
            } icon: {
                Image(systemName: "arrow.up.heart")
            }
            .sheet(isPresented: $isPresented) {
                Color.gray
//                    .presentationDetents([.large, .medium])
//                    .presentationDetents([.fraction(0.1), .fraction(0.5), .fraction(0.7)])
                    .presentationDetents([.fraction(0.1), .fraction(0.5), .fraction(0.7), .large])
                    
                    .ignoresSafeArea()
                
            }
        }
    }
}

struct BottomSheetView_Previews: PreviewProvider {
    static var previews: some View {
        BottomSheetView()
    }
}
