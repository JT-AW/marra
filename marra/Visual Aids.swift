//
//  Visual Aids.swift
//  marra
//
//  Created by John Wang on 7/17/22.
//

import SwiftUI

extension Image {
    @warn_unqualified_access
    func square() -> some View {
        Rectangle()
            .aspectRatio(1, contentMode: .fit)
            .overlay(
                self
                    .resizable()
                    .scaledToFill()
            )
            .clipShape(Rectangle())
    }
}

let gradients: [LinearGradient] = [
    (LinearGradient(gradient: Gradient(stops: [.init(color: Color(red: 0.46, green: 1, blue: 0.93), location: 0.00), .init(color: Color(red: 0.65, green: 0.44, blue: 1), location: 0.31), .init(color: Color(red: 0.99, green: 0.36, blue: 1), location: 0.58), .init(color: Color(red: 1, green: 0.28, blue: 0.28, opacity: 0), location: 1.00)]), startPoint: .topLeading, endPoint: .bottomTrailing)),
    (LinearGradient(gradient: Gradient(stops: [.init(color: Color(red: 0.65, green: 0.44, blue: 1), location: 0.00), .init(color: Color(red: 0.99, green: 0.36, blue: 1), location: 0.47), .init(color: Color(red: 1, green: 0.28, blue: 0.28, opacity: 0), location: 1.00)]), startPoint: .topLeading, endPoint: .bottomTrailing)),
    (LinearGradient(gradient: Gradient(stops: [.init(color: Color(red: 0.65, green: 0.44, blue: 1), location: 0.00), .init(color: Color(red: 0.99, green: 0.36, blue: 1, opacity: 0.49), location: 0.47), .init(color: Color(red: 1, green: 0.28, blue: 0.28, opacity: 0), location: 1.00)]), startPoint: .topLeading, endPoint: .bottomTrailing)),
    (LinearGradient(gradient: Gradient(stops: [.init(color: Color(red: 0.46, green: 1, blue: 0.84), location: 0.00), .init(color: Color(red: 0.40, green: 0.39, blue: 1), location: 1.00)]), startPoint: .topLeading, endPoint: .bottomTrailing)),
    (LinearGradient(gradient: Gradient(stops: [.init(color: Color(red: 0.27, green: 1, blue: 0.48), location: 0.00), .init(color: Color(red: 0.32, green: 0.80, blue: 0.90), location: 0.49), .init(color: Color(red: 0.55, green: 0.33, blue: 1), location: 1.00)]), startPoint: .topLeading, endPoint: .bottomTrailing))
]
