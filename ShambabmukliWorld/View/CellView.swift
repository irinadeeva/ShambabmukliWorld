//
//  CellView.swift
//  ShambabmukliWorld
//
//  Created by Irina Deeva on 05/09/24.
//

import SwiftUI

struct CellView: View {
    let cell: CellViewModal

    var body: some View {
        HStack {
            Text(cell.emoji)
                .frame(width: 40, height: 40)
                .font(.system(size: 20))
                .background(
                    LinearGradient(gradient: Gradient(colors: [cell.gradientTop, cell.gradientBottom]),
                                   startPoint: .top,
                                   endPoint: .bottom)
                )
                .clipShape(Circle())

            VStack(alignment: .leading, spacing: 2) {
                Text(cell.title)
                    .font(.system(size: 20, weight: .medium))
                    .foregroundStyle(.blackCustom)
                Text(cell.text)
                    .font(.system(size: 14))
                    .foregroundStyle(.blackCustom)
            }
            .padding(.horizontal)

            Spacer()
        }
        .padding()
        .background(.whiteCustom)
        .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}

#Preview {
    CellView(cell: CellViewModal(title: "Живая",
                                 text: "и шевелится!",
                                 emoji: "💥",
                                 gradientTop: .aliveGradientTop,
                                 gradientBottom: .aliveGradientBottom))
}
