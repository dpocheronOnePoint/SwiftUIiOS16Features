//
//  CustomGridLayoutView.swift
//  SwiftUIiOS16Feature
//
//  Created by Dimitri POCHERON on 10/06/2022.
//

import SwiftUI

struct CustomGridLayoutView: View {
    var body: some View {
        Grid {
            GridRow {
                Color.red
                    .gridCellColumns(3)
                
                Grid {
                    GridRow {
                        Color.orange
                    }
                    
                    GridRow {
                        Color.primary
                    }
                    
                    GridRow {
                        Color.purple
                    }
                }
            }
            
            GridRow {
                Color.gray
                Color.blue
            }
            
            GridRow {
                Color.yellow
                    .gridCellColumns(1)
            }
        }
        .ignoresSafeArea()
    }
}

struct CustomGridLayoutView_Previews: PreviewProvider {
    static var previews: some View {
        CustomGridLayoutView()
    }
}
