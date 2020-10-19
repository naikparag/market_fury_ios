//
//  HomeTab.swift
//

import SwiftUI

struct HomeTabView: View {
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
        .padding(.bottom, 8)
    }
}

struct HomeTab_Previews: PreviewProvider {
    static var previews: some View {
        HomeTabView()
    }
}
