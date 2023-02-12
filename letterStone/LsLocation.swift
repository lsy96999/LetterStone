//
//  LsLocation.swift
//  letterStone
//
//  Created by N-312 on 2023/02/12.
//

import Foundation
import CoreLocation

class LSLocation: NSObject, ObservableObject, CLLocationManagerDelegate{
    private var manager: CLLocationManager;
    var completionHandler: ((CLLocationCoordinate2D)->Void)?
    @Published var authoricationStatue: CLAuthorizationStatus
    @Published var lsLoc: CLLocation?
    override init() {
        manager = CLLocationManager()
        authoricationStatue = manager.authorizationStatus
        
        super.init()
        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.startUpdatingLocation();
    }
    
    func requestPermission(){
        manager.requestWhenInUseAuthorization()
    }
    
    
    func requestLocation(completion: @escaping((CLLocationCoordinate2D)->Void)){
        completionHandler = completion
        manager.requestLocation()
    }
    
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else {
            return
        }
        if let completion = self.completionHandler {
            completion(location.coordinate)
        }
        lsLoc = location
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("error: \(error.localizedDescription)")
    }
    
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        authoricationStatue = manager.authorizationStatus
    }
}
