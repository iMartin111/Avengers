//
//  FavoritesListView.swift
//  Avengers
//
//  Created by Yan Akhrameev on 04/10/21.
//

import SwiftUI

struct FavoritesListView: View {
    
    var favorites: [Avenger] = [Avenger]()
    
    var body: some View {
        NavigationView {
            GeometryReader { view in
                VStack {
                    Text("Movies")
                        .font(.custom("Avenir Black", size: 35))
                        .frame(minWidth: 0, maxWidth: view.size.width, alignment: .leading)
                        .padding()
                    List(favorites) { favorite in
                        NavigationLink {
                            DetailsView(item: favorite)
                        } label: {
                            HStack {
                                Image(favorite.image)
                                    .resizable()
                                    .frame(width: 80, height: 100)
                                    .aspectRatio(contentMode: .fill)
                                    .clipShape(RoundedRectangle(cornerRadius: 15))
                                
                                
                                Text(favorite.name)
                                    .font(.custom("Avenir Medium", size: 25))
                                    .frame(minWidth: 0, maxWidth: view.size.width, alignment: .leading)
                                
                            }
                        }
                        
                    }
                    Text("Avengers")
                        .font(.custom("Avenir Black", size: 35))
                        .frame(minWidth: 0, maxWidth: view.size.width, alignment: .leading)
                        .padding()
                    List(favorites) { favorite in
                        NavigationLink {
                            DetailsView(item: favorite)
                        } label: {
                            HStack {
                                Image(favorite.image)
                                    .resizable()
                                    .frame(width: 80, height: 100)
                                    .aspectRatio(contentMode: .fill)
                                    .clipShape(RoundedRectangle(cornerRadius: 15))
                                
                                
                                Text(favorite.name)
                                    .font(.custom("Avenir Medium", size: 25))
                                    .frame(minWidth: 0, maxWidth: view.size.width, alignment: .leading)
                                
                            }
                        }
                        
                    }
                }
            }
        }
        
        
    }
}

struct FavoritesListView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesListView(favorites: avengers)
    }
}
