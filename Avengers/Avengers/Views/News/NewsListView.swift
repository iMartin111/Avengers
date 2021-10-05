//
//  NewsListView.swift
//  Avengers
//
//  Created by Yan Akhrameev on 04/10/21.
//

import SwiftUI

struct NewsListView: View {
    var body: some View {
        GeometryReader { view in
            List(news) { art in
                HStack {
                    Image(art.image)
                        .resizable()
                        .frame(width: 80, height: 100)
                        .aspectRatio(contentMode: .fill)
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                    
                    VStack {
                        Text(art.title)
                            .font(.custom("Avenir Medium", size: 25))
                        .frame(minWidth: 0, maxWidth: view.size.width, alignment: .leading)
                        Text(art.content)
                            .font(.custom("Avenir Light", size: 17))
                            .frame(minWidth: 0, maxWidth: view.size.width, alignment: .leading)
                    }
                    
                }
            }
        }
    }
}

struct NewsListView_Previews: PreviewProvider {
    static var previews: some View {
        NewsListView()
    }
}
