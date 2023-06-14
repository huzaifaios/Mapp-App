//
//  LocationMapAnnotationView.swift
//  Map
//
//  Created by M.Huzaifa on 07/05/2023.
//

import SwiftUI

struct LocationMapAnnotationView: View {
    
    let accetColor = Color("AccentColor")
    
    var body: some View {
        VStack {
            Image(systemName: "map.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30)
                .font(.headline)
                .foregroundColor(Color.white)
                .padding(6)
                .background(accetColor)
                .cornerRadius(36)
            Image(systemName: "triangle.fill")
                .resizable()
                .scaledToFit()
                .foregroundColor(accetColor)
                .frame(width: 10, height: 10)
                .rotationEffect(Angle(degrees: 180))
                .offset(y: -9.5)
                .padding(.bottom,40)
        }
    }
}

struct LocationMapAnnotationView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            LocationMapAnnotationView()
        }
    }
}
