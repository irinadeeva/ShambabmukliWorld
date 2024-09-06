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

struct Cell {
    var state: CellState

    func toCellViewModal() -> CellViewModal {
        switch state {
        case .alive:
            return aliveCell
        case .dead:
            return deadCell
        case .life:
            return lifeCell
        }
    }
}
