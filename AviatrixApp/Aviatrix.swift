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
    var fuelLevel = 5000.0
    var maxFuel = 5000.0
    var milesPerGallon = 0.4
    var fuelCost = 0.0
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
    
    func refuel()-> Double
    {
        var addFuel = maxFuel-fuelLevel
        return addFuel
    }
    
    func flyTo(destination : String)
    {
        distanceTraveled = distanceTraveled + distanceTo(target : destination)
        location = destination
        fuelLevel = fuelLevel - (Double(distanceTraveled) / milesPerGallon)
        
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
