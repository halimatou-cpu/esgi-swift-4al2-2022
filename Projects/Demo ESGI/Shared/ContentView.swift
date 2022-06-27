//
//  ContentView.swift
//  Shared
//
//  Created by Ludovic Ollagnier on 06/05/2022.
//


// Swift
//  - Langage
//  - OpenSource
//  - "Succède" à Objective-C
// SwiftUI
//  - Framework graphique ("succède" à UIKit/AppKit)
//  - Pas open source

import SwiftUI

struct ContentView: View {

    // Stored property
    var date = "Vendredi 6 Mai"

    // Computed property
    var body: some View {
        VStack(alignment: .leading) {
            Text(date)
                .font(.headline)
                .foregroundColor(.gray)
            HStack {
                Text("Aujourd'hui")
                    .font(.title)
                    .bold()
                Spacer()
                Image(systemName: "person.fill")
                    .padding(10)
                    .background(Color.green)
                    .cornerRadius(20)
            }
            Spacer()
        }.padding()
    }

}

// Calcul l'aperçu -->
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
                .preferredColorScheme(.dark)
        }
    }
}
