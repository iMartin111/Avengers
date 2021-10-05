//
//  ListView.swift
//  Avengers
//
//  Created by Yan Akhrameev on 04/10/21.
//

import SwiftUI

struct ListView: View {
    var listContent: [Avenger]
    var body: some View {
        GeometryReader { view in
            List(listContent) { element in
                HStack {
                    Image(element.image)
                        .resizable()
                        .frame(width: 80, height: 100)
                        .aspectRatio(contentMode: .fill)
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                    
                    Text(element.name)
                        .font(.custom("Avenir Medium", size: 25))
                        .frame(minWidth: 0, maxWidth: view.size.width, alignment: .leading)
                    
                }
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView(listContent: avengers)
    }
}
