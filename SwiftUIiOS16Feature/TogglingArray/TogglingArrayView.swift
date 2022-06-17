//
//  TogglingArrayView.swift
//  SwiftUIiOS16Feature
//
//  Created by Dimitri POCHERON on 17/06/2022.
//

import SwiftUI

struct EmailList: Identifiable {
    var id: String
    var isSubscribed = false
}
struct TogglingArrayView: View {
    @State private var lists = [
    EmailList(id: "Monthly Updates", isSubscribed: true),
    EmailList(id: "Newsflashes", isSubscribed: true),
    EmailList(id: "Special Offers", isSubscribed: true)
    ]
    var body: some View {
        Form {
            Section {
                ForEach($lists) { $list in
                    Toggle(list.id, isOn: $list.isSubscribed)
                }
            }
            
            Section {
                Toggle(isOn: $lists.map(\.isSubscribed)) {
                    Text("Subscribe to all")
                }
            }
        }
    }
}

struct TogglingArrayView_Previews: PreviewProvider {
    static var previews: some View {
        TogglingArrayView()
    }
}
