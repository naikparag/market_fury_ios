//
//  CardView.swift
//

import SwiftUI

struct CardView: View {
    
    var title: String
    var subTitle: String
    
    var body : some View {
        HStack {
            Spacer()
            VStack{
                Text(title)
                    .h3()
                Text(subTitle)
                    .body2()
            }
            .padding(Dimen.s)
            Spacer()
        }
        .background(Color.themeSurface)
        .cornerRadius(Dimen.s)
        .padding(.all, Dimen.xss)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(title: "Icici Bank", subTitle: "Looks like this stock is doing great.")
    }
}
