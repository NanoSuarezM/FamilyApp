//
//  DataModel.swift
//  FamilySwift
//
//  Created by Fernando Suarez Martinez on 22.03.19.
//  Copyright © 2019 Fernando Suarez Martinez. All rights reserved.
//

class DataModel {
    
    var mothers: [Mother]
    
    init() {
        let mother1 = Mother(name: "Mum Nandi", children: [Child(name: "Nano", age: 35),
                                                               Child(name: "Javi", age: 36),
                                                               Child(name: "Jose",age: 29)], mood: .happy)
        let mother2 = Mother(name: "Mum Laura", children:[Child(name: "Pepe", age: 35),
                                                              Child(name: "Caroline", age: 36),
                                                              Child(name: "Carmen",age: 29)], mood: .sad)
        let mother3 = Mother(name: "Mum Ana", children:[Child(name: "Ruben", age: 35),
                                                          Child(name: "Carla", age: 36),
                                                          Child(name: "Santiago",age: 29)], mood: .sad)
        let mother4 = Mother(name: "Mum Penelope", children:[Child(name: "Sean", age: 35),
                                                          Child(name: "Mathiew",age: 29)], mood: .sad)
        self.mothers = [mother1, mother2, mother3, mother4]
    }
}
