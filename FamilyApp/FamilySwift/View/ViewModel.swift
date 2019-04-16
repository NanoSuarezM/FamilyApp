//
//  ViewModel.swift
//  FamilySwift
//
//  Created by Fernando Suarez Martinez on 22.03.19.
//  Copyright © 2019 Fernando Suarez Martinez. All rights reserved.
//

import Foundation

final class ViewModel {
    
    var families = [Mother]()
    
    var cellViewModels: [MotherSectionModel] = []
    
    init() {
        self.families = DataModel().mothers
        preparedata()
    }
    
    //old fashion way
//    private func preparedata() {
//        //here is where we can show best practices with swift.
//
//        families.forEach { family in
//            var childrenModels = [ChildCellModel]()
//
//            let children = family.children.compactMap({ $0 })
//            children.forEach { child in
//
//                let childCellViewModel = ChildCellViewModel(
//                                            name: child.name,
//                                            age: child.age
//                                        )
//                childrenModels.append(childCellViewModel)
//            }
//
//            let familyCellViewModel = FamilyCellViewModel(
//                                        motherName: family.name,
//                                        children: childrenModels,
//                                        mood: family.mood
//            )
//            cellViewModels.append(familyCellViewModel)
//        }
//    }
    
    //NEW FASHION WAY!!!! THE WAY TO GO
    
//    private func preparedata() {
//        //here is where we can show best practices with swift.
//        cellViewModels = families.compactMap { familyCellViewModel(for: $0)}
//    }
//
//    private func familyCellViewModel(for mother: Mother) -> FamilyCellViewModel {
//        let childrenCellViewModels = mother.children.compactMap {
//            ChildCellViewModel(
//                name: $0.name,
//                age: $0.age
//            )
//        }
//
//        return FamilyCellViewModel(
//            motherName: mother.name,
//            children: childrenCellViewModels,
//            mood: mother.mood
//        )
//    }
    
    private func preparedata() {
        cellViewModels = families.compactMap { motherSectionModel(for: $0)}
    }
    
    private func motherSectionModel(for mother: Mother) -> MotherSectionModel {
        let childrenCellModels = mother.children.compactMap {
            ChildCellModel(
                name: $0.name,
                age: $0.age
            )
        }
        
        return MotherSectionModel(
            name: mother.name,
            children: childrenCellModels,
            mood: mother.mood
        )
    }
    
}
