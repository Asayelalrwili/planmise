//
//  ItemModel.swift
//  h
//
//  Created by asayel on 18/06/1444 AH.
//

import Foundation


struct ItemModel: Identifiable, Codable {
    let id: String
    let title: String
    let isCompleted: Bool
    
    init(id: String = UUID().uuidString, title: String, isComplted: Bool) {
        self.id = id
        self.title = title
        self.isCompleted = isComplted
    }
    
    
    
    
    func updateCompletion() -> ItemModel {
        return ItemModel(id: id, title: title, isComplted: !isCompleted)
    }
    
}
