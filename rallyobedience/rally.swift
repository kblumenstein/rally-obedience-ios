//
//  rally.swift
//  rallyobedience
//
//  Created by Kerstin Blumenstein on 01/10/2016.
//  Copyright © 2016 St. Poelten University of Applied Sciences. All rights reserved.
//

import Foundation
import RealmSwift

// Station model
class Station: Object {
    dynamic var number = ""
    dynamic var name = ""
    dynamic var description = ""
    dynamic var picture = ""
    dynamic var association: Association
    
    //dynamic var owner: Person? // Properties can be optional
}

// Association model
class Association: Object {
    dynamic var name = ""
    dynamic var country = ""
    let stations = List<Station>()
    /*dynamic var birthdate = NSDate(timeIntervalSince1970: 1)
    let dogs = List<Dog>()*/
}
