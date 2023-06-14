//
//  LocationsViewModel.swift
//  Map
//
//  Created by M.Huzaifa on 06/05/2023.
//

import Foundation
import MapKit
import SwiftUI

class LocationViewModel: ObservableObject {
    // All Loaded Location in Array form
   @Published  var locations: [LocationModel]
    // Current location on the map
    @Published var singleLocation: LocationModel {
        didSet {
            updateMapRegion(location: singleLocation)
            // MARK: Auto Change Mapregion.
            /*
            // with didSet this function will auto get called when singleLocation is changed.....now we do not need to manually set the singleLocation and then update the Map region with this whenever single location is changed updateMapRegion function will get called and will automatically changed its location to singleLocation.
             */
        }
    }
    // Current Region on Map
    @Published var mapRegion: MKCoordinateRegion = MKCoordinateRegion()
    let mapSpan: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    
    // Show list of Location Button Bool
    @Published var showLocationList: Bool = false
    
    // show Location detail via sheet
    @Published var sheetLocation: LocationModel? = nil
    
    init() {
        let locations = LocationData.locations
        self.locations = locations
        self.singleLocation = locations.first!
        // after initializing we will call our func to update mapRegion
        self.updateMapRegion(location: locations.first!)
    }
    
    private func updateMapRegion(location: LocationModel) {
        
        withAnimation(.easeInOut) {
                mapRegion = MKCoordinateRegion(
                    center: location.coordinates,
                    span: mapSpan)
        }
    }
    
    func toggleShowLocationList () {
        
        withAnimation(.easeInOut) {
            showLocationList = !showLocationList
        }
    }
    
    func showNextLocation(location: LocationModel) {
        // so here all we need to do is update mapLocation and it will automatically gonna call updateMapRegion our function
        // and it will automatically update our map.
        withAnimation(.easeInOut) {
            // we need to do two things
            singleLocation = location
            // and after getting the location close our list we can do simply
            showLocationList = false
        }
    }
    
    func nextButtonPressed() {
     //MARK: first of all get the current index or Location
//        let currentIndex = locations.firstIndex { location in
//            return location == singleLocation   // MARK:  here we will return where the location is equal to singleLocation
//        }
        // same as above short way
        guard let currentindex = locations.firstIndex(where: {$0 == singleLocation}) else {
            print("Can not Find Current index in LocationData")
            return
        }
        //MARK: check if the nextIndex is Valid because if currentIndex is at last so nextIndex might be outside
        // of the array.we just wanna make suere that the nextIndex is actually valid or not.
        
        let nextIndex = currentindex + 1
        
        guard locations.indices.contains(nextIndex) else {
        //MARK: next index is not Valid so restart from zero to do that
            // it will happen when we are at the last index of the LocationArray
            guard let firstLocation = locations.first else { return }
            showNextLocation(location: firstLocation)
            return
        }
        //MARK: Next index is Valid
        let nextLocation = locations[nextIndex]
        showNextLocation(location: nextLocation)
    }
  
}
