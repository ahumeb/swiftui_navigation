//
//  Ciudad.swift
//  PrimeraApp
//
//  Created by Andres Hume on 04/01/2020.
//  Copyright © 2020 Andres Hume. All rights reserved.
//

import Foundation

struct Ciudad : Identifiable {
    var id = UUID()
    var zona: String = ""
    var pois: [String] = []
    
    public func getPois() -> [Ciudad] {
        var poisReturn: [Ciudad] = [];
        
        // Distrito Financiero
        var financialDistrict: Ciudad = Ciudad();
        financialDistrict.zona = "Financial District";
        financialDistrict.pois = [
            "9/11 Memorial", "One World Obervatory", "Liberty Statue", "Wall Street", "Battery Park"
        ]
        poisReturn.append(financialDistrict);
        
        // MidTown
        var midTown: Ciudad = Ciudad();
        midTown.zona = "Mid Town Manhattan";
        midTown.pois = [
            "Central Park", "St. Patricks Cathedral", "Rockefeller Center", "Empire State", "Grand Central Terminal",
            "Highline", "Plaza Hotel", "Apple 5th Av. store", "Park Av. Building", "Chrysler Building"
        ]
        poisReturn.append(midTown);
        
        // Brooklyn
        var brook: Ciudad = Ciudad();
        brook.zona = "Brooklyn";
        brook.pois = [
            "Brooklyn Bridge", "DUMBO", "Manhattan Bridge", "Federal State Court", "Glassed Carousel", "Williamsburg"
        ]
        poisReturn.append(brook);
        
        return poisReturn;
    }
}

let infoCiudad = Ciudad().getPois()
