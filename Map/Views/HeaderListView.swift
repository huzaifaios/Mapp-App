//
//  HeaderListView.swift
//  Map
//
//  Created by M.Huzaifa on 06/05/2023.
//

import SwiftUI

struct HeaderListView: View {
    
    @EnvironmentObject private var vm: LocationViewModel
    
    var body: some View {
        List {
            ForEach(vm.locations) { location in
                Button {
                    vm.showNextLocation(location: location)
                } label: {
                    
                    listRowView(location: location)
                }
                .padding(.vertical,4)
                .listRowBackground(Color.clear)    
            }
        }
        .listStyle(.plain)
    }
}

struct HeaderListView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderListView()
            .environmentObject(LocationViewModel())
    }
}

extension HeaderListView {
    // we are using func because we do not have any reference to location over here which we are using in ForEach so we are passing a parametre in here and we do not see any view we can get the view by making func return view -> some  View
    private func listRowView (location: LocationModel) -> some View {
        HStack {
            if let image = location.imageNames.first {
                Image(image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 45, height: 45)
                    .cornerRadius(15)
            }
            VStack(alignment: .leading) {
                Text(location.name)
                    .font(.headline)
                Text(location.cityName)
                    .font(.subheadline)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Image(systemName: "arrow.up")
                .font(.headline)
                .rotationEffect(Angle(degrees: vm.showLocationList ? 180 : 0))
        }
    }
}
