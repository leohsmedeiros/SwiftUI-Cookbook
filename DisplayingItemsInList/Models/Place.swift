//
//  Place.swift
//  DisplayingItemsInList
//
//  Created by Leonardo Medeiros on 29/11/22.
//

import Foundation

struct Place: Identifiable {
    let id = UUID()
    let name: String
    let photo: String
    let hikes: [Hike]
}

func getPlaces() -> [Place] {
    return [
        Place(name: "Denver", photo: "denver", hikes: []),
        Place(name: "Newyork", photo: "ny", hikes: []),
        Place(name: "Costa Rica", photo: "costa-rica", hikes: []),
        Place(name: "Seattle", photo: "seattle", hikes: []),
        Place(name: "Cuba", photo: "cuba", hikes: [])
    ]
}

func getAllPlacesWithHikes() -> [Place] {
    return [
        Place(name: "Colorado", photo: "colorado", hikes: [
            Hike(name: "Trail Ridge"),
            Hike(name: "Flatirons"),
            Hike(name: "Maroon Bells Peaks")
        ]),
        Place(name: "Oregon", photo: "oregon", hikes: [
            Hike(name: "Cascade Mountains"),
            Hike(name: "Crater Lake National Park")
        ])
    ]
}
