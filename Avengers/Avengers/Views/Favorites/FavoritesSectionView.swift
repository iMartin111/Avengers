//
//  FavoritesSectionView.swift
//  Avengers
//
//  Created by Yan Akhrameev on 04/10/21.
//

import SwiftUI

struct FavoritesSectionView: View {
    var body: some View {
        GeometryReader { view in
            
            VStack {
                FavoritesHeaderView()
                    .frame(height: 100)
                FavoritesListView()
                
            }
        }
    }
}

struct FavoritesSectionView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesSectionView()
    }
}
