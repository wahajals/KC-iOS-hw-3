//
//  ContentView.swift
//  Hw3
//
//  Created by WSS on 26/08/2022.
//

import SwiftUI

struct ContentView: View {
    @State var opacity = 0.9
    var body: some View {
        NavigationView{
            ZStack{
                Color.mint
                    .ignoresSafeArea()
                    .opacity(opacity)
                ScrollView{
                    VStack{
                        ForEach(myExpenses) { expenses in
                            Divider()
                            NavigationLink {
                                StoresInfo(ourExpnses: expenses)
                            } label: {
                                StoreView(Store: expenses)
                            }
                        }
                        Slider(value: $opacity, in: 0...1 )
                            .foregroundColor(.red)

                    }
                }
            }.navigationTitle("Expenses")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
