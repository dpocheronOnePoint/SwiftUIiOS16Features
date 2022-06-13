//
//  SwiftUIiOS16FeatureApp.swift
//  SwiftUIiOS16Feature
//
//  Created by Dimitri POCHERON on 10/06/2022.
//

import SwiftUI

@main
struct SwiftUIiOS16FeatureApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .backgroundTask(.appRefresh("StormyNoon")) {
            scheduleAppRefresh()
             
        }
    }
}
