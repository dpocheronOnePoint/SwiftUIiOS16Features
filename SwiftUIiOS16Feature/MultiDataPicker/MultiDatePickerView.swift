//
//  MultiDatePickerView.swift
//  SwiftUIiOS16Feature
//
//  Created by Dimitri POCHERON on 10/06/2022.
//

import SwiftUI

struct MultiDatePickerView: View {
    @State private var activityDates: Set<DateComponents> = [
        DateComponents(calendar: .current, year: 2022, month: 6, day: 5),
        DateComponents(calendar: .current, year: 2022, month: 6, day: 28)
    ]
    var body: some View {
        Form {
            MultiDatePicker("Activities Dates", selection: $activityDates)
        }
    }
}

struct MultiDatePickerView_Previews: PreviewProvider {
    static var previews: some View {
        MultiDatePickerView()
    }
}
