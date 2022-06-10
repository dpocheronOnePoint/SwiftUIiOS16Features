//
//  BarChatView.swift
//  SwiftUIiOS16Feature
//
//  Created by Dimitri POCHERON on 10/06/2022.
//

import SwiftUI
import Charts

// Interesting link
// https://betterprogramming.pub/swiftui-bar-charts-274e9fbc8030

struct BarChatView: View {
    
    var barValues: [BarValues] = [
        .init(name: "A", value: 50, color: .green),
        .init(name: "B", value: 100, color: .blue),
        .init(name: "C", value: 120, color: .orange),
        .init(name: "D", value: 150, color: .yellow),
        .init(name: "E", value: 200, color: .red)
    ]
    var body: some View {
        VStack {
            Chart {
                ForEach(barValues){
                    (chart) in
                    
                    BarMark(x: .value("S", chart.name), y: .value("S",chart.value))
                        .foregroundStyle(chart.color)
                    
                    AreaMark(x: .value("S", chart.name), y: .value("S", chart.value))
                        .opacity(0.5)
                }
            }
            .padding()
            .chartXAxis(.hidden)
            .chartYAxis(.hidden)
            
            Chart {
                ForEach(barValues) { (chart) in
                    LineMark(x: .value("S", chart.name), y: .value("S", chart.value))
                        .foregroundStyle(chart.color)
                    
                    PointMark(x: .value("S", chart.name), y: .value("S", chart.value))
                    
                    RectangleMark(x: .value("S", chart.name), y: .value("S", chart.value))
                        .foregroundStyle(chart.color.gradient)
                }
            }
        }
    }
}

struct BarChatView_Previews: PreviewProvider {
    static var previews: some View {
        BarChatView()
    }
}
