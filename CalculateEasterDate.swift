//
//  CalculateEasterDate.swift
//  Church Cal
//
//  Created by Joshua Rystedt on 11/10/15
//

import Foundation

func calculateEasterDateFor(desiredYear: Int) -> NSDate {
    // Calculate the date for Easter in any given year
    
    let a = desiredYear % 19
    let b = desiredYear / 100
    let c = desiredYear % 100
    let d = (19 * a + b - b / 4 - ((b - (b + 8) / 25 + 1) / 3) + 15) % 30
    let e = (32 + 2 * (b % 4) + 2 * (c / 4) - d - (c % 4)) % 7
    let f = d + e - 7 * ((a + 11 * d + 22 * e) / 451) + 114
    let month = f / 31
    let day = f % 31 + 1
    
    // Create NSDate for Easter
    
    customDateComponents.month = month
    customDateComponents.day = day
    customDateComponents.year = desiredYear
    
    return calendar.dateFromComponents(customDateComponents)!
}
