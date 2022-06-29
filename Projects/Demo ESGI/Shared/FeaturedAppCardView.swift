//
//  FeaturedAppCardView.swift
//  Demo ESGI
//
//  Created by Ludovic Ollagnier on 28/06/2022.
//

import SwiftUI

struct FeaturedAppCardView: View {

    let featuredApp: FeaturedApp

    var body: some View {
        ZStack {
            Image(featuredApp.featureImageName)
                .resizable()
            VStack(alignment: .leading) {
                VStack(alignment: .leading) {
                    Text("En détail".uppercased())
                        .font(.title3)
                        .bold()
                        .foregroundColor(.gray)
                    Text(featuredApp.featureTitle)
                        .font(.title)
                        .bold()
                        .foregroundColor(.white)
                }
                .padding(.top, 10)
                .padding(.leading, 20)
                Spacer()
                AppView(app: featuredApp.app)
            }
        }
        .cornerRadius(20)
        .aspectRatio(3/4, contentMode: .fit)
        .padding()
        .shadow(color: .gray, radius: 5, x: 2, y: 2)
    }
}

struct FeaturedAppCardView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            FeaturedAppCardView(featuredApp: FeaturedApp(featureImageName: "FeaturedImage", featureTitle: "Préparez votre road-trip", featureCategory: .details, app: Application(appName: "Calimoto GPS ", appBaseline: "Calcul d'itinéraire pour…", appIconName: "AppIcon1024", haveInAppPurchases: true), appStatus: .notOwned))

        }
    }
}
