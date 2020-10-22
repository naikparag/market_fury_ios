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
                CardView(title: "My Fav Stock \($0)", subTitle: "Some common large text. So large that it should kinda look like a para. This will allow us to do some cool testing with font spacing and see how it feels on a real device.")
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
