//
//  AvengersHeaderView.swift
//  Avengers
//
//  Created by Yan Akhrameev on 04/10/21.
//

import SwiftUI

struct AvengersHeaderView: View {
    
    var body: some View {
        GeometryReader { view in
            HStack {
                Text("Avengers")
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

struct AvengersHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        AvengersHeaderView()
    }
}
