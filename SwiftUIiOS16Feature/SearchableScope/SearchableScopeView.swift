//
//  SearchableScopeView.swift
//  SwiftUIiOS16Feature
//
//  Created by Dimitri POCHERON on 16/06/2022.
//

import SwiftUI

struct Message: Identifiable, Codable {
    let id: Int
    var user: String
    var text: String
}

enum SearchScope: String, CaseIterable {
    case inbox, favorites
}

struct SearchableScopeView: View {
    @State private var messages = [Message]()
    
    @State private var searchText = ""
    @State private var searchScope = SearchScope.inbox
    
    var filteredMessages: [Message] {
        if searchText.isEmpty {
            return messages
        } else {
            return messages.filter { $0.text.localizedCaseInsensitiveContains(searchText ) }
        }
    }
    
    func runSearch() {
        Task {
            // Need to be fix SSL Error...
            guard let url = URL(string: "https://hws.dev/\(searchScope.rawValue).json") else { return }
            
            let (data, _) = try await URLSession.shared.data(from: url)
            messages = try JSONDecoder().decode([Message].self, from: data)
        }
    }
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(filteredMessages) { message in
                    VStack(alignment: .leading) {
                        Text(message.user)
                            .font(.headline)
                        
                        Text(message.text)
                    }
                }
            }
            .searchable(text: $searchText, scope: $searchScope) {
                ForEach(SearchScope.allCases, id: \.self) { scope in
                    Text(scope.rawValue.capitalized)
                }
            }
            .navigationTitle("Messages")
        }
        .onSubmit(of:.search, runSearch)
        .onChange(of: searchScope) {
            _ in runSearch()
        }
    }
}

struct SearchableScopeView_Previews: PreviewProvider {
    static var previews: some View {
        SearchableScopeView()
    }
}
