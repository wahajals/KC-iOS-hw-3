//
//  Expenses.swift
//  Hw3
//
//  Created by WSS on 26/08/2022.
//

import Foundation

struct Expenses: Identifiable {
    let id = UUID()
    var store: String
    var paid: Int
    var profileimage: String
    var background: String
    var purchases: String
}

var myExpenses =
    [
        Expenses(store: "Zara", paid: 30, profileimage: "ZaraLogo", background: "ZaraStore", purchases: "Vest, Blazer"),
        Expenses(store: "Bershka", paid: 20, profileimage: "BershkaLogo", background: "BershkaStore", purchases: "T-Shirt, Vest"),
        Expenses(store: "Jarir", paid: 34, profileimage: "JarirLogo", background: "JarirStore", purchases: "Books"),
        Expenses(store: "FootLocker", paid: 60, profileimage: "FootLockerLogo", background: "FootLockerStore", purchases: "Shoes"),
    ]
