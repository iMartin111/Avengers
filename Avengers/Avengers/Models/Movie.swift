//
//  Movie.swift
//  Avengers
//
//  Created by Yan Akhrameev on 04/10/21.
//

import Foundation


class Movie: Avenger {
    let description: String
    var favorite: Bool = false
    
    init(id: String, name: String, image: String, description: String) {
        self.description = description
        super.init(id: id, name: name, image: image)
    }
}


var movies: [Movie] = [
    Movie(id: "01", name: "Thor Ragnarok", image: "thorRagnarokImage", description: "Very good movie"),
    Movie(id: "02", name: "Spiderman Far from Home", image: "spidermanFarFromHomeImage", description: "Very enjoyable as well."),
    Movie(id: "03", name: "Iron Man 3", image: "ironMan3Image", description: "too much, it was better never to meke it.")
]
