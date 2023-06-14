//
//  LocationView.swift
//  Map
//
//  Created by M.Huzaifa on 06/05/2023.
//

import SwiftUI
import MapKit



struct LocationView: View {
    
    @EnvironmentObject private var vm: LocationViewModel
    let maxWidthForIpad: CGFloat = 700
    
    var body: some View {
        ZStack {
            mapLayer
                .ignoresSafeArea()
            VStack {
                HeaderView
                    .frame(maxWidth: maxWidthForIpad)
                    .padding()
                Spacer()
                locationPreviewStack
            }
        }
        .sheet(item: $vm.sheetLocation, onDismiss: nil) { location in
            LocationDetailView(location: location)
        }
    }
}

struct LocationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationView()
            .environmentObject(LocationViewModel())
    }
}


// Extension is continution of the current struct with extension we can put code in different files and those can be part of our current struct.
extension LocationView {
    private var HeaderView: some View {
        VStack {
            Button {
                vm.toggleShowLocationList()
            } label: {
                Text(vm.singleLocation.name + ", " + vm.singleLocation.cityName)
                    .font(.title2)
                    .fontWeight(.black)
                    .foregroundColor(Color.primary)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .animation(.none, value: vm.singleLocation)
                    .overlay(alignment: .leading) {
                        Image(systemName: "arrow.down")
                            .font(.headline)
                            .fontWeight(.bold)
                            .foregroundColor(Color.primary)
                            .rotationEffect(Angle(degrees: vm.showLocationList ? 180 : 0))
                            .padding()
            }
        }
            if vm.showLocationList {
                HeaderListView()
            }
        }
        .background(.thickMaterial)
        .cornerRadius(10)
        .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: 20)
    }
    private var mapLayer: some View {
        Map(coordinateRegion: $vm.mapRegion,
            annotationItems: vm.locations,
            annotationContent: { location in
            MapAnnotation(coordinate: location.coordinates) {
                LocationMapAnnotationView()
                    .scaleEffect(vm.singleLocation == location ? 1 : 0.7)
                    .shadow(radius: 10)
                    .onTapGesture {
                        vm.showNextLocation(location: location)
                    }
            }
        })
    }
    private var locationPreviewStack: some View {
        ZStack {
            ForEach(vm.locations) { location in
                
                if vm.singleLocation == location {
                    LocationPreviewView(location: location)
                        .shadow(color: Color.black.opacity(0.3), radius: 20)
                        .padding()
                        .frame(maxWidth: maxWidthForIpad)
                        .frame(maxWidth: .infinity)
                        .transition(.asymmetric(
                            insertion: .move(edge: .trailing),
                            removal: .move(edge: .leading)))
                }
            }
        }
    }
}
