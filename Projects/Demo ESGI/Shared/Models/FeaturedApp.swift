//
//  FeaturedApp.swift
//  Demo ESGI
//
//  Created by Ludovic Ollagnier on 27/06/2022.
//

import Foundation

struct FeaturedApp {

    enum Category {
        case details
        case favorites
    }

    enum Status {
        case notOwned
        case owned
        case installed
    }

    let featureImageName: String
    let featureTitle: String
    let featureCategory: Category

    let app: Application

    var appStatus: Status

    mutating func buy() {
        appStatus = Status.owned
    }

    mutating func download() {
        appStatus = .installed
    }

    mutating func uninstall() {
    }
}
