//
//  Character.swift
//  Avengers
//
//  Created by Yan Akhrameev on 04/10/21.
//

import Foundation


class Character: Avenger {
    let description: String
    var favorite: Bool = false
    
    init(id: String, name: String, image: String, description: String) {
        self.description = description
        super.init(id: id, name: name, image: image)
    }
}


var avengers: [Character] = [
    Character(id: "01", name: "Thor", image: "thorImage", description: "Son of Odin, God of thunder."),
    Character(id: "02", name: "Iron Man", image: "ironManImage", description: "Genius master mind, playboy billioner."),
    Character(id: "03", name: "Hulk", image: "hulkImage", description: "Big green, smart when a human, stupid when green."),
    Character(id: "04", name: "Spiderman", image: "spidermanImage", description: "Young and kind of dumb, but funny."),
    Character(id: "05", name: "Captain America", image: "captainAmericaImage", description: "Strong, obedient soldier.")
]
