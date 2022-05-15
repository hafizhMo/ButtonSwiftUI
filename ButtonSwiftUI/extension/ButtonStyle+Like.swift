//
//  ButtonStyle+Like.swift
//  ButtonSwiftUI
//
//  Created by Hafizh Mo on 15/05/22.
//

import Foundation
import SwiftUI

struct LikeButtonStyle: ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            Image(systemName: "hand.thumbsup.fill")
                .symbolVariant(.fill)
                .padding(.vertical, 20)
                .padding(.leading, 20)
            configuration.label.padding(.trailing, 20)
        }
        .background(.pink)
        .foregroundColor(.white)
        .clipShape(RoundedRectangle(cornerRadius: 8))
        .opacity(configuration.isPressed ? 0.7 : 1)
    }
}

extension ButtonStyle where Self == LikeButtonStyle {
    static var like: LikeButtonStyle { .init()}
}
