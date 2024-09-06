//
//  CellView.swift
//  ShambabmukliWorld
//
//  Created by Irina Deeva on 05/09/24.
//

import SwiftUI

struct CellViewModal: Hashable {
    let title: String
    let text: String
    let emoji: String
    let gradientTop: Color
    let gradientBottom: Color
}

let aliveCell = CellViewModal(title: "Живая",
                              text: "и шевелится!",
                              emoji: "💥",
                              gradientTop: .aliveGradientTop,
                              gradientBottom: .aliveGradientBottom)

let deadCell = CellViewModal(title: "Мёртвая",
                             text: "или прикидывается",
                             emoji: "💀",
                             gradientTop: .deadGradientTop,
                             gradientBottom: .deadGradientBottom)

let lifeCell = CellViewModal(title: "Жизнь",
                             text: "Ку-ку!",
                             emoji: "🐣",
                             gradientTop: .lifeGradientTop,
                             gradientBottom: .lifeGradientBottom)
