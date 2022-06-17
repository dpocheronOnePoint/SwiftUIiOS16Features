//
//  DismissKeyBoardView.swift
//  SwiftUIiOS16Feature
//
//  Created by Dimitri POCHERON on 17/06/2022.
//

import SwiftUI

struct DismissKeyBoardView: View {
    @State private var username = "Anonymous"
    @State private var bio = ""
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Username", text: $username)
                TextEditor(text: $bio)
                    .frame(height: 400)
                    .border(.quaternary, width: 1)
            }
            .padding(.horizontal)
        }
        .scrollDismissesKeyboard(.interactively)
    }
}

struct DismissKeyBoardView_Previews: PreviewProvider {
    static var previews: some View {
        DismissKeyBoardView()
    }
}
