//
//  MatchEntity+CoreDataProperties.swift
//  DartsCount
//
//  Created by Игорь Сысоев on 15.10.2023.
//
//

import Foundation
import CoreData


extension MatchEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<MatchEntity> {
        return NSFetchRequest<MatchEntity>(entityName: "MatchEntity")
    }

    @NSManaged public var date: Date?
    @NSManaged public var id: UUID?
    @NSManaged public var time: String?
    @NSManaged public var winner: String?
    @NSManaged public var players: NSSet?

}

// MARK: Generated accessors for players
extension MatchEntity {

    @objc(addPlayersObject:)
    @NSManaged public func addToPlayers(_ value: PlayerForMath)

    @objc(removePlayersObject:)
    @NSManaged public func removeFromPlayers(_ value: PlayerForMath)

    @objc(addPlayers:)
    @NSManaged public func addToPlayers(_ values: NSSet)

    @objc(removePlayers:)
    @NSManaged public func removeFromPlayers(_ values: NSSet)

}

extension MatchEntity : Identifiable {

}
