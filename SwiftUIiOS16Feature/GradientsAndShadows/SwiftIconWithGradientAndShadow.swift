//
//  SwiftIconWithGradientAndShadow.swift
//  SwiftUIiOS16Feature
//
//  Created by Dimitri POCHERON on 10/06/2022.
//

import SwiftUI

struct SwiftIconWithGradientAndShadow: View {
    var body: some View {
        ZStack{
                            
            Circle().fill(.red.gradient.shadow(.drop(color: .primary, radius: 10)).shadow(.inner(radius: 10)))
                .frame(width: 150, height: 150)

            Image(systemName: "swift")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 75, height: 75)
                            
        }
    }
}

struct SwiftIconWithGradientAndShadow_Previews: PreviewProvider {
    static var previews: some View {
        SwiftIconWithGradientAndShadow()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
