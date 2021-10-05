//
//  FavoritesHeaderView.swift
//  Avengers
//
//  Created by Yan Akhrameev on 04/10/21.
//

import SwiftUI

struct FavoritesHeaderView: View {
    var body: some View {
        GeometryReader { view in
            
            Text("Favorites")
                .font(.custom("Avenir Black", size: 45))
                .frame(minWidth: 0, maxWidth: view.size.width, alignment: .leading)
                .padding()
               
                
                
        }
    }
}

struct FavoritesHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesHeaderView()
    }
}
