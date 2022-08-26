//
//  StoresInfo.swift
//  Hw3
//
//  Created by WSS on 26/08/2022.
//

import SwiftUI

struct StoresInfo: View {
    @State var ourExpnses: Expenses
    var body: some View {
        ZStack{
            Image(ourExpnses.background)
                .resizable()
                .ignoresSafeArea()
                .blur(radius:4)
            Spacer()
            
            VStack{
                
            Image(ourExpnses.profileimage)
                .resizable()
                .scaledToFit()
                .frame(width:150, height:100)
                .clipShape(Circle())
                .padding()
            Text("Store : \(ourExpnses.store)")
                .bold()
                .padding()
                .foregroundColor(.white)
            Text("Money Spent : \(ourExpnses.paid) KD")
                .bold()
                .padding()
                .foregroundColor(.white)
            Text("Purchases : \(ourExpnses.purchases)")
                .bold()
                .padding()
                .foregroundColor(.white)
                .padding()
            }.background(.primary).opacity(0.7).cornerRadius(15)
        }
    }
}

struct StoresInfo_Previews: PreviewProvider {
    static var previews: some View {
        StoresInfo(ourExpnses: .init(store: "Zara", paid: 30, profileimage: "ZaraLogo", background: "ZaraStore", purchases: "Vest,Blazer"))
    }
}
