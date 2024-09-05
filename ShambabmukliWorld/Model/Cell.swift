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

//enum CellState: String {
//    case alive = "Живая"
//    case dead = "Мёртвая"
//    case life = "Жизнь"
//}
//
//enum CellSubtitle: String {
//    case alive = "и шевелится!"
//    case dead = "или прикидывается"
//    case life = "Ку-ку!"
//}

struct Cell: Hashable {
    var state: CellState
}
