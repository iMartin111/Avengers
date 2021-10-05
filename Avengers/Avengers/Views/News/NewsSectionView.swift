//
//  NewsSectionView.swift
//  Avengers
//
//  Created by Yan Akhrameev on 04/10/21.
//

import SwiftUI

struct NewsSectionView: View {
    var body: some View {
        GeometryReader { view in
            
            VStack {
                NewsHeaderView()
                    .frame(height: 100)
                NewsListView()
                
            }
        }
    }
}

struct NewsSectionView_Previews: PreviewProvider {
    static var previews: some View {
        NewsSectionView()
    }
}
