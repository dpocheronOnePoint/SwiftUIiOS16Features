//
//  NavigationSplitView.swift
//  SwiftUIiOS16Feature
//
//  Created by Dimitri POCHERON on 16/06/2022.
//

import SwiftUI

struct Team: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let players: [String]
}

struct NavigationSplitViewExample: View {
    @State private var teams = [
        Team(name: "Joueur 1", players: ["Dani", "Jamie", "Roy"])
    ]
    @State private var selectedTeam: Team?
    @State private var selectedPlayer: String?
    
    var body: some View {
        NavigationSplitView {
            List(teams, id: \.self, selection: $selectedTeam) { team in
                Text(team.name)
            }
            .navigationSplitViewColumnWidth(250)
        } content: {
            List(selectedTeam?.players ?? [], id: \.self, selection: $selectedPlayer, rowContent: Text.init)
        } detail: {
            Text(selectedPlayer ?? "Please choose a player.")
        }
//        .navigationSplitViewStyle(.prominentDetail)
    }
}

struct NavigationSplitView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationSplitViewExample()
    }
}
