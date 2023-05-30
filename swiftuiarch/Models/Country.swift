//
//  Country.swift
//  swiftuiarch
//
//  Created by Agustin Palacios on 5/30/23.
//

import Foundation

struct Country : Identifiable {
    let id: UUID
    let name: String
    
    init(id: UUID = UUID(), name: String) {
        self.id = id
        self.name = name
    }
}
