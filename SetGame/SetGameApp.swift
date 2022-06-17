//
//  SetGameApp.swift
//  SetGame
//
//  Created by Alvin Liang on 2022-06-16.
//

import SwiftUI

@main
struct SetGameApp: App {
    static let game = SetGameVM()
    var body: some Scene {
        WindowGroup {
            SetGameView(viewModel: SetGameApp.game)
        }
    }
}
