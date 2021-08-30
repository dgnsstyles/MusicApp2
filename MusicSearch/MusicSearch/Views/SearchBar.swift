//
//  SearchBar.swift
//  MusicSearch
//
//  Created by David Goren on 30-08-21.
//

import SwiftUI

struct SearchBar: UIViewRepresentable {
    typealias UIViewType = UISearchBar
    @Binding var searchTerm: String
    
    func makeUIView(context: Context) -> UISearchBar {
        let serachBar = UISearchBar(frame: .zero)
        serachBar.delegate = context.coordinator
        serachBar.searchBarStyle = .minimal
        return serachBar
    }
    
    func makeCoordinator() -> SearchBarCoordinator {
         return SearchBarCoordinator(searchTerm: $searchTerm)
    }
    
    func updateUIView(_ uiView: UISearchBar, context: Context) {
        
    
    }
    
    
    class SearchBarCoordinator: NSObject, UISearchBarDelegate {
        @Binding var searchTerm: String
        
        init(searchTerm: Binding<String>) {
            self._searchTerm = searchTerm
            
        }
        
        func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
            searchTerm = searchBar.text ?? ""
            UIApplication.shared.windows.first {$0.isKeyWindow}?.endEditing(true)
        }
    }
    
   
    
    
    
 
}


