//
//  NavigationDemo.swift
//  Demo ESGI
//
//  Created by Ludovic Ollagnier on 05/07/2022.
//

import SwiftUI

struct NavigationDemo: View {

    @State var searchTerms = ""

    var body: some View {
        NavigationView {
            List {
                Text("Line 1")
                Text("Line 2")
                NavigationLink(destination: ContentView()) {
                    Text("Line 3")
                }

                Text("Line 4")
            }
            .searchable(text: $searchTerms)
            .navigationTitle("List")
        }
    }
}

struct NavigationDemo_Previews: PreviewProvider {
    static var previews: some View {
        NavigationDemo()
    }
}
