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

    let featureImageName: String
    let featureTitle: String
    let featureCategory: Category

    var app: Application
}
