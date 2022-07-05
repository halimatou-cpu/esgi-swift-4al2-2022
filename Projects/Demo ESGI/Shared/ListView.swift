//
//  ListView.swift
//  Demo ESGI
//
//  Created by Ludovic Ollagnier on 05/07/2022.
//

import SwiftUI

struct Album: Identifiable, Codable  {
    var id = UUID()
    var name: String
}

struct ListView: View {

    let albums = [
        Album(name: "1999"),
        Album(name: "Desire"),
        Album(name: "Hello Sunshine")]

    @State var albums2 = [
        Album(name: "19991999"),
        Album(name: "DesireDesire"),
        Album(name: "Hello SunshineSunshine")]

    @State var searchTerms = ""

    var body: some View {
        NavigationView {
            List {
                Button("Add Album") {
                    albums2.append(Album(name: "Test"))
                }
                Button("Shuffle Albums") {
                    albums2.shuffle()
                }
                Section(header: Text("Best album")) {
                    ForEach(albums) { album in
                        Text(album.name)
                    }
                }
                ForEach(albums2) { album in
                    VStack {
                        HStack {
                            Image(systemName: "leaf")
                            Text(album.name)
                        }
                        Text("Blabla")
                    }
                }.onDelete { indexSet in
                    albums2.remove(atOffsets: indexSet)
                }.onMove { indexSet, index in
                    albums2.move(fromOffsets: indexSet, toOffset: index)
                }
            }.searchable(text: $searchTerms)
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
