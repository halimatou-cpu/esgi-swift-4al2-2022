//
//  FeaturedApp.swift
//  Demo ESGI
//
//  Created by Ludovic Ollagnier on 27/06/2022.
//

import Foundation

//Reference type
class MaSuperClasse {

    var name = ""

    func sayHello() {
        print(name)
    }
}

//Value type
struct MaStruct {

    var name = ""

    func sayHello() {
        print(name)
    }
}

class MaClasse: MaSuperClasse {

}

protocol MonProtocol { // Idem interface dans autres langages

}



enum AppStatus {
    case notOwned
    case notInstalled
    case installed
}
