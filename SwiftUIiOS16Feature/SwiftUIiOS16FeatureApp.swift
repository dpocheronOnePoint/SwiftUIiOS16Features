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
            TogglingArrayView()
        }
        .backgroundTask(.appRefresh("StormyNoon")) {
            scheduleAppRefresh()
            if await isStormy() {
                await notifyForPhoto()
            }
        }
        .backgroundTask(.urlSession("isStormy")) {
            
        }
    }
}
