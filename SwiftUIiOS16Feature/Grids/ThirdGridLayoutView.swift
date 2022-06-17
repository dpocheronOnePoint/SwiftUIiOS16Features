//
//  ThirdGridLayoutView.swift
//  SwiftUIiOS16Feature
//
//  Created by Dimitri POCHERON on 16/06/2022.
//

import SwiftUI

struct ThirdGridLayoutView: View {
    var body: some View {
        Grid {
            GridRow {
                Text("Food")
                Text("$200")
            }
            
            GridRow {
                Text("Rend")
                Text("$800")
            }
            
            GridRow {
                Text("Candles")
                Text("$3600")
            }
            
            Divider()
            
            GridRow {
                Text("$4600")
                    .gridCellColumns(2)
                    .multilineTextAlignment(.trailing)
            }
        }
        .font(.title)
    }
}

struct ThirdGridLayoutView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdGridLayoutView()
    }
}
