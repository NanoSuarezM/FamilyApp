//
//  Mother.swift
//  FamilySwift
//
//  Created by Fernando Suarez Martinez on 22.03.19.
//  Copyright © 2019 Fernando Suarez Martinez. All rights reserved.
//

import Foundation

enum Mood {
    case happy, sad, angry
}

struct Mother {
    let name: String
    let children: [Child]
    let mood: Mood
    
    init(
        name: String,
        children: [Child],
        mood: Mood
    ) {
        self.name = name
        self.children = children
        self.mood = mood
    }

}
