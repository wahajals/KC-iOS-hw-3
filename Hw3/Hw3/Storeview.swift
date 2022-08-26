//
//  Storeview.swift
//  Hw3
//
//  Created by WSS on 26/08/2022.
//

import SwiftUI

    struct StoreView: View {
        @State var Store: Expenses
        var body: some View {
            VStack{
                Image(Store.profileimage)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height:150)
                    .clipShape(Circle())
                    .padding()
                Text("Store : \(Store.store)")
                    .bold()
                    .padding()
                
            }
        }
    }

struct Storeview_Previews: PreviewProvider {
    static var previews: some View {
        StoreView(Store: .init(store: "Zara", paid: 0, profileimage: "ZaraLogo", background: "", purchases: ""))
    }
}
