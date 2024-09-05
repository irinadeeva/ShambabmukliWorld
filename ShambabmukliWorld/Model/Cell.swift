//
//  Cell.swift
//  ShambabmukliWorld
//
//  Created by Irina Deeva on 05/09/24.
//

import Foundation

enum CellState: String {
    case alive
    case dead
    case life
}

struct Cell: Hashable {
    var state: CellState
}
