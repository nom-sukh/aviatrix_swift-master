//
//  Aviatrix.swift
//  AviatrixApp
//
//  Created by Amy Holt on 6/10/18.
//  Copyright © 2018 Amy Holt. All rights reserved.
//

import Foundation

class Aviatrix
{
    var running = false
    var author : String
    var location = "St. Louis"
    var data = AviatrixData()
//    var fuelLevel = 5000
//    var maxFuel : Int
//    var milesPerGallon : Int
//    var fuelCost : Int
    var distanceTraveled = 0
    init(authorName : String)
    {
        author = authorName
    }
    func start() -> Bool
    {
        running = true
        return running
    }
    
    func refuel()
    {
        
    }
    
    func flyTo(destination : String)
    {
        distanceTraveled = distanceTraveled + data.knownDistances[location]![destination]!
        location = destination
        
    }
    
    func distanceTo(target : String)->Int
    {
        return data.knownDistances[location]![target]!
    }
    
    func knownDestinations() -> [String]
    {
        return ["St. Louis", "Phoenix", "Denver", "SLC"]
    }
}
