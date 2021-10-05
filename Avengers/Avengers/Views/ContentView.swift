//
//  ContentView.swift
//  Avengers
//
//  Created by Yan Akhrameev on 04/10/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            MovieSectionView()
                .tabItem {
                    Text("Movies")
                    Image(systemName: "film")
                }
            NewsSectionView()
                .tabItem {
                    Text("News")
                    Image(systemName: "newspaper")
                }
            AvengersSectionView()
                .tabItem {
                    Text("Avengers")
                    Image(systemName: "a.circle")
                }
            FavoritesSectionView()
                .tabItem {
                    Text("Favorites")
                    Image(systemName: "star")
                }
            
            
        }
        
       
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
