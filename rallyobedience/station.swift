//
//  station.swift
//  rallyobedience
//
//  Created by Kerstin Blumenstein on 01/10/2016.
//  Copyright © 2016 St. Poelten University of Applied Sciences. All rights reserved.
//

import Foundation
import RealmSwift

// Station model
class Station: Object {
    dynamic var id = ""
    dynamic var name = ""
    dynamic var desc = ""
    dynamic var picture = ""
    
    //dynamic var owner: Person? // Properties can be optional
    
    override static func primaryKey() -> String? {
        return "id"
    }
}
