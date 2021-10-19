 
import UIKit

struct Flavor {
  
  // MARK: Instance Variables
  
  let name: String
  let topColor: UIColor
  let bottomColor: UIColor
  
  // MARK: Static Methods
  static func vanilla() -> Flavor {
    return Flavor(name: "Vanilla",
                  topColor: UIColor.RGB(red: 251, green: 248, blue: 236),
                  bottomColor: UIColor.RGB(red: 230, green: 215, blue: 171))
  }
  
  static func chocolate() -> Flavor {
    return Flavor(name: "Chocolate",
                  topColor: UIColor.RGB(red: 203, green: 140, blue: 58),
                  bottomColor: UIColor.RGB(red: 107, green: 46, blue: 11))
  }
  
  // MARK: Initializers
  init(name: String, topColor: UIColor, bottomColor: UIColor) {
    self.name = name
    self.topColor = topColor
    self.bottomColor = bottomColor
  }
  
  init?(dictionary: [String: String]) {
    guard let topColor = UIColor.RGBAColorFromString(string: dictionary["topColor"]),
      let bottomColor = UIColor.RGBAColorFromString(string: dictionary["bottomColor"]),
      let name = dictionary["name"] else {
        return nil
    }
    
    self.topColor = topColor
    self.bottomColor = bottomColor
    self.name = name
  }
}

protocol FlavorAdapter {
  func updateWithFlavor(_: Flavor)
}
