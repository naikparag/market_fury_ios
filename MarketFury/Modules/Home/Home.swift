//
//  Home.swift
//

import SwiftUI

struct Home: View {
    init() {
        UITableView.appearance().separatorColor = .clear
    }
    
    var body: some View {
        ScrollView {
            ForEach((1...5), id: \.self) {
                CardView(title: "Stock \($0)", subTitle: "Some common large text")
            }
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
        .background(Color.white)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
