//
//  StaticListForm.swift
//  Demo ESGI
//
//  Created by Ludovic Ollagnier on 05/07/2022.
//

import SwiftUI

struct StaticListForm: View {

    @State var userAgreed = false
    @State var selectedValue = 0.0
    @State var selectedDate = Date()

    var body: some View {
        Form {
            Text("Line 1")
            DatePicker(selection: $selectedDate) {
                Text("BirthDate")
            }
            Image(systemName: "leaf")
            Toggle(isOn: $userAgreed) {
                Text("User Agreed")
            }
            Slider(value: $selectedValue) {
                Text("Volume")
            }
            Section {
                Button("Save") {

                }
            }
        }
    }
}

struct StaticListForm_Previews: PreviewProvider {
    static var previews: some View {
        StaticListForm()
    }
}
