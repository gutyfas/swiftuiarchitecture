//
//  ContentView.swift
//  swiftuiarch
//
//  Created by Agustin Palacios on 5/30/23.
//

import SwiftUI

struct CountryList: View {
    
    @ObservedObject var viewModel: ViewModel
    
    var body: some View {
        VStack {
            List (viewModel.countries){ country in
                Text(country.name)
            }
            .onAppear() {
                self.viewModel.loadCountries()
            }
        }
        
    }
}

struct CountryView_Previews: PreviewProvider {
    static var previews: some View {
        CountryList(viewModel: CountryList.ViewModel())
    }
}
