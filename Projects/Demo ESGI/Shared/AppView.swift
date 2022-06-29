//
//  AppView.swift
//  Demo ESGI
//
//  Created by Ludovic Ollagnier on 29/06/2022.
//

import SwiftUI

struct AppView: View {

    let app: Application

    var body: some View {
        HStack {
            Image(app.appIconName)
                .resizable()
                .frame(width: 48, height: 48)
                .cornerRadius(12)
            VStack(alignment: .leading) {
                Text(app.appName)
                    .bold()
                Text(app.appBaseline)
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            Spacer()
            Button("Installer".uppercased()) {

            }
            .font(.system(size: 14, weight: .bold))
            .padding(.horizontal, 8)
            .background(Capsule().foregroundColor(Color(white: 0, opacity: 0.2)))
        }
        .padding(16)
        .background(Color.white)
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView(app: Application(appName: "Calimoto GPS", appBaseline: "Calcul d'itinéraire pour…", appIconName: "AppIcon1024", haveInAppPurchases: true))
    }
}
