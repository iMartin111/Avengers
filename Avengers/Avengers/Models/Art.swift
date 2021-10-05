//
//  Art.swift
//  Avengers
//
//  Created by Yan Akhrameev on 04/10/21.
//

import Foundation


struct Art: Identifiable {
    let id: String
    let title: String
    let content: String
    let image: String
    
}

var news: [Art] = [
    Art(id: "01", title: "New Marvel Movie", content: "It is ecpected to be a very good movie", image: "newImage"),
    Art(id: "02", title: "New xMen serie", content: "It is ecpected to be a very good serie", image: "newImage1"),
    Art(id: "03", title: "Wolverine gets a new Movie", content: "Will be confirmed next year", image: "newImage2"),
    Art(id: "04", title: "Spiderman in cartoons", content: "they don't know what else to do", image: "newImage3")
]
