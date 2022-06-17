//
//  DeviceOrientationAnyLayoutView.swift
//  SwiftUIiOS16Feature
//
//  Created by Dimitri POCHERON on 17/06/2022.
//

import SwiftUI

struct DeviceOrientationAnyLayoutView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        let layout = horizontalSizeClass == .regular ? AnyLayout(HStack()) : AnyLayout(VStack())
        
        layout {
            Image(systemName: "1.circle")
            Image(systemName: "2.circle")
            Image(systemName: "3.circle")
        }
        .font(.largeTitle)
    }
}

struct DeviceOrientationAnyLayoutView_Previews: PreviewProvider {
    static var previews: some View {
        DeviceOrientationAnyLayoutView()
    }
}
