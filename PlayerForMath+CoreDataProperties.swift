//
//  PlayerForMath+CoreDataProperties.swift
//  DartsCount
//
//  Created by Игорь Сысоев on 15.10.2023.
//
//

import Foundation
import CoreData


extension PlayerForMath {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PlayerForMath> {
        return NSFetchRequest<PlayerForMath>(entityName: "PlayerForMath")
    }

    @NSManaged public var idPlayer: UUID?
    @NSManaged public var moves: NSSet?

}

// MARK: Generated accessors for moves
extension PlayerForMath {

    @objc(addMovesObject:)
    @NSManaged public func addToMoves(_ value: MoveEntity)

    @objc(removeMovesObject:)
    @NSManaged public func removeFromMoves(_ value: MoveEntity)

    @objc(addMoves:)
    @NSManaged public func addToMoves(_ values: NSSet)

    @objc(removeMoves:)
    @NSManaged public func removeFromMoves(_ values: NSSet)

}

extension PlayerForMath : Identifiable {

}
