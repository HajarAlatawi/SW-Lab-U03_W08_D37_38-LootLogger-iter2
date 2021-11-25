
//LootLogger-Bronze/Silver-HajarAlatawi

import UIKit

class Item:  Equatable {
  var name: String
  var valueInDollars: Int
  var serialNumber: String?
  var dateCreated: Date
  
  
  init(name: String,
       serialNumber: String?,
       valueInDollars: Int) {
    self.name = name
    self.valueInDollars = valueInDollars
    self.serialNumber = serialNumber
    self.dateCreated = Date()
  }
  
  
  convenience init(random: Bool = false) {
    if random {
      
      let adjectives = ["Super Super Fluffy", "Super Super Rusty", "Super Super Shiny"]
      let nouns = ["Bear", "Spork", "Mac Book Pro 13 inch"]
      
      let randomAdjective = adjectives.randomElement()!
      let randomNoun = nouns.randomElement()!
      
      let randomName = "\(randomAdjective) \(randomNoun)"
      let randomValue = Int.random(in: 0..<100)
      let randomSerialNumber =
      UUID().uuidString.components(separatedBy: "-").first!
      
      self.init(name: randomName,
                serialNumber: randomSerialNumber,
                valueInDollars: randomValue)
    } else {
      self.init(name: "",
                serialNumber: nil,
                valueInDollars: 0)
    }
  }
  
  
  static func ==(lhs: Item, rhs: Item) -> Bool {
    return lhs.name == rhs.name
    
    && lhs.serialNumber == rhs.serialNumber
    && lhs.valueInDollars == rhs.valueInDollars
    && lhs.dateCreated == rhs.dateCreated
  }
}