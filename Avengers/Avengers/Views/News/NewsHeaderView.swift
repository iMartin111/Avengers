//
//  NewsHeaderView.swift
//  Avengers
//
//  Created by Yan Akhrameev on 04/10/21.
//

import SwiftUI

struct NewsHeaderView: View {
    var body: some View {
        GeometryReader { view in
            HStack {
                Text("News")
                    .font(.custom("Avenir Black", size: 45))
                    .frame(minWidth: 0, maxWidth: view.size.width, alignment: .leading)
                    .padding()
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

struct NewsHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        NewsHeaderView()
    }
}
