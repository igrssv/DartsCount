//
//  MoveEntity+CoreDataProperties.swift
//  DartsCount
//
//  Created by Игорь Сысоев on 15.10.2023.
//
//

import Foundation
import CoreData


extension MoveEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<MoveEntity> {
        return NSFetchRequest<MoveEntity>(entityName: "MoveEntity")
    }

    @NSManaged public var amount: Int64
    @NSManaged public var id: UUID?

}

extension MoveEntity : Identifiable {

}
