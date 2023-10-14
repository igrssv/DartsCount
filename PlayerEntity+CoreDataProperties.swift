//
//  PlayerEntity+CoreDataProperties.swift
//  DartsCount
//
//  Created by Игорь Сысоев on 09.10.2023.
//
//

import Foundation
import CoreData


extension PlayerEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PlayerEntity> {
        return NSFetchRequest<PlayerEntity>(entityName: "PlayerEntity")
    }

    @NSManaged public var color: String?
    @NSManaged public var id: UUID?
    @NSManaged public var name: String?
    @NSManaged public var score: Int64
    @NSManaged public var moves: NSSet?

}

// MARK: Generated accessors for moves
extension PlayerEntity {

    @objc(addMovesObject:)
    @NSManaged public func addToMoves(_ value: MoveEntity)

    @objc(removeMovesObject:)
    @NSManaged public func removeFromMoves(_ value: MoveEntity)

    @objc(addMoves:)
    @NSManaged public func addToMoves(_ values: NSSet)

    @objc(removeMoves:)
    @NSManaged public func removeFromMoves(_ values: NSSet)

}

extension PlayerEntity : Identifiable {

}
