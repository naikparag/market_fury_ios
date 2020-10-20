//
//  HomeTab.swift
//

import SwiftUI

struct HomeTabView: View {
    
    init() {
            UITabBar.appearance().barTintColor = UIColor.black
            UITabBar.appearance().isTranslucent = true
        }
    
    var body: some View {
        TabView {
            Home()
                .tabItem {
                    Image(systemName: "house")
                    Text("home")
                }
            Portfolio()
                .tabItem {
                    Image(systemName: "bag")
                    Text("portfolio")
                }
            Stock()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("search")
                }
            Text("You can make changes to your account here.")
                .tabItem {
                    Image(systemName: "person")
                    Text("account")
                }
        }
        .font(.headline)
    }
}

struct HomeTab_Previews: PreviewProvider {
    static var previews: some View {
        HomeTabView()
    }
}
