//
//  MoviesView.swift
//  Avengers
//
//  Created by Yan Akhrameev on 04/10/21.
//

import SwiftUI

struct MoviesListView: View {
    
    var body: some View {
        NavigationView {
            GeometryReader { view in
                VStack {
                    MoviesHeaderView()
                        .frame(height: 100)
                    List(movies) { movie in
                        NavigationLink {
                            DetailsView(item: movie)
                        } label: {
                            HStack {
                                Image(movie.image)
                                    .resizable()
                                    .frame(width: 80, height: 100)
                                    .aspectRatio(contentMode: .fill)
                                    .clipShape(RoundedRectangle(cornerRadius: 15))
                                
                                Text(movie.name)
                                    .font(.custom("Avenir Medium", size: 25))
                                    .frame(minWidth: 0, maxWidth: view.size.width, alignment: .leading)
                                
                            }
                        }
                        
                    }
                    
                }
                
                
            }
            .navigationTitle("")
            .navigationBarHidden(true)
        }
        
        
        
        
    }
}

struct MoviesView_Previews: PreviewProvider {
    static var previews: some View {
        MoviesListView()
    }
}
