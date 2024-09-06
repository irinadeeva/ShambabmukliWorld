//
//  WorldViewModel.swift
//  ShambabmukliWorld
//
//  Created by Irina Deeva on 05/09/24.
//

import Foundation

final class WorldViewModel: ObservableObject {
    @Published var cells: [CellViewModal] = []
    private var cellState: [Cell] = []
    
    func addCell() {
        let newCell = generateNewCell()
        cellState.append(newCell)
        
        handleLifeState()
        handleDeathState()
        updateCells()
    }
    
    private func generateNewCell() -> Cell {
        return Cell(state: Bool.random() ? .alive : .dead)
    }
    
    private func handleLifeState() {
        guard cellState.count >= 3 else { return }
        
        let recentCells = cellState.suffix(3)
        if recentCells.allSatisfy({ $0.state == .alive }) {
            appendLifeCell()
        }
    }
    
    private func appendLifeCell() {
        let cellLife = Cell(state: .life)
        cellState.append(cellLife)
    }
    
    private func handleDeathState() {
        guard cellState.count >= 4 else { return }
        
        if isLifeFollowedByThreeDead() {
            let index = cellState.count - 4
            killLifeCell(at: index)
        }
    }
    
    private func isLifeFollowedByThreeDead() -> Bool {
        let recentCells = cellState.suffix(4)
        
        guard let firstCells = recentCells.first, firstCells.state == .life else {
            return false
        }
        
        return recentCells.suffix(3).allSatisfy({ $0.state == .dead })
    }
    
    private func killLifeCell(at index: Int) {
        guard index >= 0, cellState.count > index else { return }
        
        cellState[index].state = .dead
    }
    
    private func updateCells() {
        cells = cellState.map { $0.toCellViewModal() }
    }
}
