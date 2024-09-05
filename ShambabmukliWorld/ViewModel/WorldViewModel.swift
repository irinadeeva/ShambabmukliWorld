//
//  WorldViewModel.swift
//  ShambabmukliWorld
//
//  Created by Irina Deeva on 05/09/24.
//

import Foundation

final class WorldViewModel: ObservableObject {
    @Published var cells: [Cell] = []

    func addCell() {
        let newCell = generateNewCell()
        cells.append(newCell)

        handleLifeState()
        handleDeathState()
    }

    private func generateNewCell() -> Cell {
        return Cell(state: Bool.random() ? .alive : .dead)
    }

    private func handleLifeState() {
        guard cells.count >= 3 else { return }

        let recentCells = cells.suffix(3)
        if recentCells.allSatisfy({ $0.state == .alive }) {
            appendLifeCell()
        }
    }

    private func appendLifeCell() {
        let cellLife = Cell(state: .life)
        cells.append(cellLife)
    }

    private func handleDeathState() {
        guard cells.count >= 4 else { return }

        if isLifeFollowedByThreeDead() {
            let index = cells.count - 4
            killLifeCell(at: index)
        }
    }

    private func isLifeFollowedByThreeDead() -> Bool {
        let recentCells = cells.suffix(4)

        guard let firstCells = recentCells.first, firstCells.state == .life else {
            return false
        }

        return recentCells.suffix(3).allSatisfy({ $0.state == .dead })
    }

    private func killLifeCell(at index: Int) {
        guard index >= 0, cells.count > index else {
            return
        }

        cells[index].state = .dead
    }
}
