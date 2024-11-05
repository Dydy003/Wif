//
//  HomeView.swift
//  Wif
//
//  Created by Dylan Caetano on 05/11/2024.
//

import SwiftUI

struct HomeView: View {
    
    @State var query: String = ""
    
    var body: some View {
        HStack {
            TextField("Wat're you looking for", text: $query)
                .textFieldStyle(.roundedBorder)
            
            Button {
                // MARK: Iplement query
            } label: {
                Text("Go")
            }
        }
        .padding()
    }
}

#Preview {
    HomeView()
}
