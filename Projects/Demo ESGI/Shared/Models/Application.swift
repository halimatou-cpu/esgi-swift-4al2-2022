//
//  Application.swift
//  Demo ESGI
//
//  Created by Ludovic Ollagnier on 28/06/2022.
//

import Foundation

struct Application {
    
    enum Status: String {
        case notOwned
        case owned
        case installed
    }
    let appName: String
    let appBaseline: String
    let appIconName: String
    let haveInAppPurchases: Bool

    var appStatus: Status

    mutating func buy() {
        appStatus = Status.owned
    }

    mutating func download() {
        appStatus = .notOwned
    }

    mutating func uninstall() {
    }
}
