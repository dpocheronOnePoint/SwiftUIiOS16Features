//
//  SwitchLayoutView.swift
//  SwiftUIiOS16Feature
//
//  Created by Dimitri POCHERON on 10/06/2022.
//

import SwiftUI

struct SwitchLayoutView: View {
    @State private var switchStack: Bool = false
    
    var body: some View {
        let layout = switchStack ? AnyLayout(HStack()) : AnyLayout(VStack())
        VStack {
            Button {
                self.switchStack.toggle()
            } label: {
                Text("Switch") 
            }
            
            layout {
                RoundedRectangle(cornerRadius: 20)
                    .fill(.orange)
                RoundedRectangle(cornerRadius: 20)
                    .fill(.blue)
            }
            .frame(width: 200, height: 200)
        }
        .padding()
        .animation(.default, value: self.switchStack)
    }
}

struct SwitchLayoutView_Previews: PreviewProvider {
    static var previews: some View {
        SwitchLayoutView()
    }
}
