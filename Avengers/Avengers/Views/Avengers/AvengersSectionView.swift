//
//  AvengersSection.swift
//  Avengers
//
//  Created by Yan Akhrameev on 04/10/21.
//

import SwiftUI

struct AvengersSectionView: View {
    var body: some View {
        GeometryReader { view in
            
            
            
                AvengersListView()
                
            
        }
    }
}

struct AvengersSection_Previews: PreviewProvider {
    static var previews: some View {
        AvengersSectionView()
    }
}
