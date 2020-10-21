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
                    .h2()
                Text(subTitle)
                    .h3()
            }
            Spacer()
        }
        .background(Color.gray)
        .cornerRadius(8)
        .padding(.top)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(title: "Icici Bank", subTitle: "Looks like this stock is doing great.")
    }
}
    
