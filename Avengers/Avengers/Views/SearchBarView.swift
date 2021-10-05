//
//  SearchBarView.swift
//  Avengers
//
//  Created by Yan Akhrameev on 04/10/21.
//

import SwiftUI

struct SearchBarView: View {
    
    let array = avengers
    @State private var searchText = ""
    
    var body: some View {
        NavigationView {
            List {
                TextField("Search your Avenger", text: $searchText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                ForEach(array.filter{ $0.hasPrefix(searchText) || searchText == ""}, id:\.self) { searchText in
                    Text(searchText)
                }
            }
            
        }
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView()
    }
}
