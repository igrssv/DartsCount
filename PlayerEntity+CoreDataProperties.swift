//
//  PlayerEntity+CoreDataProperties.swift
//  DartsCount
//
//  Created by Игорь Сысоев on 15.10.2023.
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

}

extension PlayerEntity : Identifiable {

}
