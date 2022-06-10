//
//  GaugesView.swift
//  SwiftUIiOS16Feature
//
//  Created by Dimitri POCHERON on 10/06/2022.
//

import SwiftUI

struct GaugesView: View {
    var body: some View {
        VStack(spacing: 50) {
            
            // MARK: - AccessoryCircular
            VStack{
                Gauge(value: 50, in: 0...100) {
                    Text("Fuel")
                }
                .gaugeStyle(.accessoryCircular)
                .tint(.primary)
            }
            
            // MARK: - AccessoryCircularCapacity
            VStack {
                Gauge(value: 50, in: 0...100) {
                    Text("Fuel")
                        .font(.caption)
                }
                .gaugeStyle(.accessoryCircularCapacity)
                .tint(.primary)
            }
            
            // MARK: - LinearCapacity
            VStack {
                Gauge(value: 50, in: 0...100) {
                    Text("Fuel")
                        .font(.caption)
                }
                .gaugeStyle(.linearCapacity)
                .tint(.primary)
            }
            .padding(.horizontal, 20)
            
            // MARK: - AccessoryLinear
            VStack {
                Text("Fuel")
                    .font(.caption)
                Gauge(value: 50, in: 0...100) {
                    // Code here not display ??
                }
                .gaugeStyle(.accessoryLinear)
                .tint(.primary)
            }
            .padding(.horizontal, 20)
            
            // MARK: - AccessoryLinearCapacity
            VStack {
                Text("Fuel")
                    .font(.caption)
                Gauge(value: 50, in: 0...100) {
                    // Code here not display ??
                }
                .gaugeStyle(.accessoryLinearCapacity)
                .opacity(0.7)
                .tint(.primary)
            }
            .padding(.horizontal, 20)
        }
    }
}

struct GaugesView_Previews: PreviewProvider {
    static var previews: some View {
        GaugesView()
    }
}
