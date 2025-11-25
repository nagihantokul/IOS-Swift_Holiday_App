/*
 Homework 11 - Holiday Activities App
 Nagihan Tokul
 10/27/2025
*/

import Foundation

struct Activity: Identifiable, Decodable {
    let id: Int
    let title: String
    let details: String
    let image: String 
}

struct Holiday: Identifiable, Decodable {
    let id: Int
    let name: String
    let image: String
    let about: String
    let activities: [Activity]
}
 

