//
//  HomeView.swift
//  Wif
//
//  Created by Dylan Caetano on 05/11/2024.
//

import SwiftUI

struct HomeView: View {
    
    @State var query: String = ""
    
    var service = DataService()
    
    var body: some View {
        HStack {
            TextField("Wat're you looking for", text: $query)
                .textFieldStyle(.roundedBorder)
            
            Button {
                // MARK: Iplement query
            } label: {
                Text("Go")
                    .font(.system(size: 18).bold())
                    .foregroundStyle(Color.gradient)
                    .padding(10)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.colorT)
                    )
            }
        }
        .padding()
        .task {
            await service.businessSearch()
        }
    }
}

#Preview {
    HomeView()
}
