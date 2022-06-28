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
        Text(featuredApp.featureTitle)
    }
}

struct FeaturedAppCardView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedAppCardView(featuredApp: FeaturedApp(featureImageName: "featureImageName", featureTitle: "FeatureTitle", featureCategory: .details, app: Application(appName: "AppName", appBaseline: "", appIconName: "", haveInAppPurchases: true), appStatus: .notOwned))
    }
}
