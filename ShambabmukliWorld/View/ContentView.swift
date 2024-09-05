//
//  ContentView.swift
//  ShambabmukliWorld
//
//  Created by Irina Deeva on 05/09/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var worldVM = WorldViewModel()

    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                ForEach(worldVM.cells, id: \.self) { cell in
                    Text(cell.state.rawValue)
                        .font(.title)
                }
            }
            .frame(maxWidth: .infinity)
        }

        Button(action: {
            worldVM.addCell()
        }, label: {
            Text("Cотворить").textCase(.uppercase)
        })
    }
}

#Preview {
    ContentView()
}
