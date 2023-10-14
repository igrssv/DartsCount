//
//  Match.swift
//  DartsCount
//
//  Created by Игорь Сысоев on 07.10.2023.
//

import Foundation
struct MatchTemp: Identifiable, Codable {
    var id = UUID()
    let date: Date
    let winner: String
    let players: [Player]
}

extension MatchTemp {
    static func setupMatch() -> MatchTemp {
        let players = Player.generationPlayers()
        return MatchTemp(date: Date(), winner: players[0].name, players: players)
    }
}
