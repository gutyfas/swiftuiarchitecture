//
//  ViewModel.swift
//  swiftuiarch
//
//  Created by Agustin Palacios on 5/30/23.
//

import Foundation

extension CountryList {
    class ViewModel: ObservableObject {
        @Published private(set) var countries: [Country] = []
        
        func loadCountries() {
            self.countries = CountryList.sampleData
        }
        
    }
}

extension CountryList {
    static var sampleData: [Country] {
        [
            Country(name: "Mexico"),
            Country(name: "United States of America"),
            Country(name: "United Kindom"),
            Country(name: "China"),
            Country(name: "Canda")
        ]
    }
}
