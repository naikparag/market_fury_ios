//
//  Stock.swift
//

import SwiftUI

struct Stock: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination: StockDetailView()) {
                Text("All our Stock go here")
            }
        }
    }
}

struct Stock_Previews: PreviewProvider {
    static var previews: some View {
        Stock()
    }
}
