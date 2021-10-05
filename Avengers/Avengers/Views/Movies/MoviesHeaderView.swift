//
//  MoviesHeaderView.swift
//  Avengers
//
//  Created by Yan Akhrameev on 04/10/21.
//

import SwiftUI

struct MoviesHeaderView: View {
    var body: some View {
        GeometryReader { view in
            HStack {
                Text("Movies")
                    .font(.custom("Avenir Black", size: 45))
                    .frame(minWidth: 0, maxWidth: view.size.width, alignment: .leading)
                    .padding()
                Button {
                    // sort by logic
                } label: {
                    Image(systemName: "slider.horizontal.3")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .padding()
                }
                
                Button {
                    // changes view to collection
                } label: {
                    Image(systemName: "square.grid.2x2")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .padding()
                }
                
                
                
            }
        }
        
    }
}

struct MoviesHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        MoviesHeaderView()
    }
}
