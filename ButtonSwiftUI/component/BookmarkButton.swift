//
//  BookmarkButton.swift
//  ButtonSwiftUI
//
//  Created by Hafizh Mo on 16/05/22.
//

import SwiftUI

struct BookmarkButton: View {
    let title: String
    let action: () -> Void
        
    var body: some View {
        
        Button(action: action) {
            Text(title)
        }
        .buttonStyle(DeleteButtonStyle(image: "bookmark.fill", color: .blue))
    }
}

struct BookmarkButton_Previews: PreviewProvider {
    static var previews: some View {
        BookmarkButton(title: "Dummy") {}
    }
}
