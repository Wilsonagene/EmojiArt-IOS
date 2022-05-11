//
//  EmojiArtApp.swift
//  EmojiArt
//
//  Created by wilson agene on 3/19/22.
//

import SwiftUI

@main
struct EmojiArtApp: App {
    @StateObject var paletteStore = PaletteStore(named: "Default")
    
    var body: some Scene {
        DocumentGroup(newDocument: { EmojiArtDocument() }) { config in
            EmojiArtDocumentVeiw(document: config.document)
                .environmentObject(paletteStore)
        }
    }
}
