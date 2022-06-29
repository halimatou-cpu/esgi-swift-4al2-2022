//
//  AppView.swift
//  Demo ESGI
//
//  Created by Ludovic Ollagnier on 29/06/2022.
//

import SwiftUI

struct AppView: View {

    // @State: Property wrapper
    @Binding var feature: FeaturedApp

    var body: some View {
        HStack {
            Image(feature.app.appIconName)
                .resizable()
                .frame(width: 48, height: 48)
                .cornerRadius(12)
            VStack(alignment: .leading) {
                Text(feature.app.appName)
                    .bold()
                Text(feature.app.appBaseline)
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            Spacer()
            if feature.app.appStatus == .notOwned {
                Button("Installer".uppercased()) {
                    feature.app.buy()
                }
                .font(.system(size: 14, weight: .bold))
                .padding(.horizontal, 8)
                .background(Capsule().foregroundColor(Color(white: 0, opacity: 0.2)))
            } else if feature.app.appStatus == .owned {
                Button("Télécharger".uppercased()) {
                    feature.app.download()
                }
                .font(.system(size: 14, weight: .bold))
                .padding(.horizontal, 8)
                .background(Capsule().foregroundColor(Color(white: 0, opacity: 0.2)))
            }

        }
        .padding(16)
        .background(Color.white)
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        Text("")
    }
}
