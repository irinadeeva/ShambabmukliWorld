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
        VStack {
            Text("Клеточное наполнение")
                .font(.system(size: 20, weight: .medium))
                .foregroundStyle(.whiteCustom)
                .padding(.top, 16)
            
            ScrollView {
                ScrollViewReader { scrollViewProxy in
                    VStack {
                        ForEach(worldVM.cells, id: \.self) { cell in
                            CellView(cell: cell)
                        }
                    }
                    .id("CellScrollView")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .onChange(of: worldVM.cells) {
                        scrollViewProxy.scrollTo("CellScrollView", anchor: .bottom)
                    }
                }
            }
            
            Button(action: {
                worldVM.addCell()
            }, label: {
                Text("Cотворить")
                    .textCase(.uppercase)
                    .font(.system(size: 14, weight: .medium))
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 10)
            })
            .buttonStyle(.borderedProminent)
            .tint(.violet)
            .padding(.horizontal)
        }
        .background(
            LinearGradient(gradient: Gradient(colors: [.violet, .blackCustom]),
                           startPoint: .top,
                           endPoint: .bottom)
        )
    }
}

#Preview {
    ContentView()
}
