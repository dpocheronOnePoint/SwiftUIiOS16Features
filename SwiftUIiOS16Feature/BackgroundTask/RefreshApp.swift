//
//  RefreshApp.swift
//  SwiftUIiOS16Feature
//
//  Created by Dimitri POCHERON on 13/06/2022.
//

import Foundation
import BackgroundTasks
import SwiftUI

func scheduleAppRefresh() {
    let today = Calendar.current.startOfDay(for: .now)
    let tomorrow = Calendar.current.date(byAdding: .day, value: 1, to: today)!
    let noonComponent = DateComponents(hour: 12)
    let noon = Calendar.current.date(byAdding: noonComponent, to: tomorrow)
    
    let request = BGAppRefreshTaskRequest(identifier: "StormNoon")
    request.earliestBeginDate = noon
    try? BGTaskScheduler.shared.submit(request)
}

// Call the Weather WS to checl if weather is stormy
func isStormy() async -> Bool {
    
    let config = URLSessionConfiguration.background(withIdentifier: "isStormy")
    config.sessionSendsLaunchEvents = true
    
    let session = URLSession(configuration: config)
    
    let request = URLRequest(url: URL(string: "WEATHER_URL")!)
    
    let response = await withTaskCancellationHandler {
        try? await session.data(for: request)
    } onCancel: {
        let task = session.downloadTask(with: request)
        task.resume()
    }
    
    if let data = response {
        return true
    }
    
    return false
}

// Send Success upload photo notification
func notifyForPhoto() async {
    
}


