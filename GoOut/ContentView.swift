import SwiftUI
import MapKit
import CoreLocation

struct Locations: Identifiable {
    let id = UUID()
    var name: String
    var coordinate: CLLocationCoordinate2D
    var image: String?
}

//criar uma logica para pegar os valroes das coordenadas e criar o marker

struct ContentView: View {
    
    @State var locat: [Locations] = []
    
    @State var isShowingAddEvent = false
    
    var body: some View {
        NavigationStack {
//            List {
//                ForEach(locations) { location in
//                    Text(String(location.coordinate.latitude))
//                }
//            }
//            .toolbar {
//                Button("New") {
//                    isShowingAddEvent = true
//                }
//            }
            Map(){
                ForEach(locat) { location in
                    Marker(location.name, coordinate: location.coordinate)
                }
            }
            .toolbar{
                Button("New"){
                    isShowingAddEvent = true
                }
            }
            .sheet(isPresented: $isShowingAddEvent) {
                AddEventView(locat: $locat)
            }
        }
    }
}

struct AddEventView: View {
    
    var geocoder = CLGeocoder()
    
    @Binding var locat: [Locations]
    
    @State var name = ""
    @State var lat = ""
    @State var long = ""
    @State var coordinates = ""
    var location: CLLocation?
    
    mutating func forwardGeocoding(address: String) -> [Double?]{
        let geocoder = CLGeocoder()
        var coord: [Double] = []
        geocoder.geocodeAddressString(address, completionHandler: { (placemarks, error) in
            if error != nil {
                print("Failed to retrieve location")
                return
            }
            
            if let placemarks = placemarks, placemarks.count > 0 {
                location = placemarks.first?.location
            }
            
            guard let location = location else {
                print("No Matching Location Found")
                coord.append(0.0)
                coord.append(0.0)
                return
            }
        })
        print(location?.coordinate.latitude,location?.coordinate.longitude)
        return [location?.coordinate.latitude,location?.coordinate.longitude]
    }
    
    var body: some View {
        Form {
            TextField("Event Name", text: $name)
            TextField("Lat", text: $lat)
            TextField("Long", text: $long)
            TextField("Address", text: $coordinates)
            
            let lati = Double(lat)
            let longi = Double(long)
            
            var addresse = "1 Infinite Loop, CA, USA"
            
            let coordinates = forwardGeocoding(address: "1 Infinite Loop, CA, USA")
            
                Button("Salvar") {
                    print(coordinates.count)
                    locat.append(Locations(name: name, coordinate: CLLocationCoordinate2D(latitude: lati ?? 0.0, longitude: longi ?? 0.0)))
                }
            }
        }
    }
    
    #Preview {
        ContentView()
    }
