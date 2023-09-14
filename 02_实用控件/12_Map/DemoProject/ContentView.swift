//
//  ContentView.swift
//  DemoProject
//
//  Created by DongQing on 2023/9/11.
//

import SwiftUI
import MapKit

struct IdentifiableMapPin : Identifiable {
    var id : Int
    var mapPin : MapMarker
}


struct ContentView : View {
    @State var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 39.915352, longitude: 116.391105),
            span: MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02))
    @State var mapPins : [IdentifiableMapPin] = []
    
    var body: some View {
        Map(coordinateRegion: self.$region, annotationItems: mapPins) { identifiableMapPin in
            identifiableMapPin.mapPin
        }
        .onAppear(perform: {
            let newMapPin = MapMarker(coordinate: CLLocationCoordinate2D(latitude: 39.915352, longitude: 116.391105))
            self.mapPins.append(IdentifiableMapPin(id: self.mapPins.count, mapPin: newMapPin))
        })
    }
}
#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
