# CapitalCities
Repo following Project 19: Capital Cities: MKMapView and more.  The goal of project is to learn about MKMapView and annotations.

## Concepts learned/practiced
* ```MKMapView```
* Creating a new custom class for Capital Cities with initializer

  ```Swift

  class Capital: NSObject, MKAnnotation {
    var title: String?
    var coordinate: CLLocationCoordinate2D
    var info: String

    init(title: String, coordinate: CLLocationCoordinate2D, info: String) {
      self.title = title
      self.coordinate = coordinate
      self.info = info
    }
  }

  ```
* Annotations
  * ```addAnnotation()``` method - adds the annotation to the map view

    ```Swift
    mapView.addAnnotation([london, oslo, paris, rome, washington])

    ```  

## Attributions
[Project 19: Capital Cities: MKMapView and more @ hackingwithswift.com](https://www.hackingwithswift.com/read/19/overview)
