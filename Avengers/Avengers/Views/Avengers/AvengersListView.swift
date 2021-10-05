//
//  AvengersListView.swift
//  Avengers
//
//  Created by Yan Akhrameev on 04/10/21.
//

import SwiftUI

struct AvengersListView: View {
    
    
    var body: some View {
        NavigationView {
            GeometryReader { view in
                VStack {
                    AvengersHeaderView()
                        .frame(height: 100)
                    List(avengers) { avenger in
                        NavigationLink {
                            DetailsView(item: avenger)
                        } label: {
                            HStack {
                                Image(avenger.image)
                                    .resizable()
                                    .frame(width: 80, height: 100)
                                    .aspectRatio(contentMode: .fill)
                                    .clipShape(RoundedRectangle(cornerRadius: 15))
                                
                                Text(avenger.name)
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

struct AvengersListView_Previews: PreviewProvider {
    static var previews: some View {
        AvengersListView()
            .previewLayout(.sizeThatFits)
    }
}
