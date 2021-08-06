//
//  BearBar.swift
//  Bear
//
//  Created by Cергей Иванович on 3.08.21.
//

import Foundation

class bearBar {
    var peremennayy = 0
    var maasBear: [Bear]
    static var peremennaya = 0
    var staticMassAddBeer: [Bear]
    var staticProdanoBeer: [Bear]
  static  var infoOPurchase = ""
    static var infoOPurchaseAction = ""

    static let shared: bearBar = bearBar()
    
    private init() {
        self.maasBear = []
        self.staticMassAddBeer = []
        self.staticProdanoBeer = []
    }
    
    func addBearToTheWrehouse() {
        if peremennayy == 0 {
            Bear.Heiniken()
            peremennayy += 1
        } else {
            Bear.Ziguli()
            peremennayy -= 1
        }
    }
    
    func pourABeer () -> String {
        var lastIndexMass = 0
        if maasBear.isEmpty {
            bearBar.infoOPurchase = "Пиво закончилось\n"
        }
        else {
            lastIndexMass  = Int(maasBear.count) - 1
            bearBar.infoOPurchase = "Вы купили пиво \(bearBar.shared.maasBear[lastIndexMass].bear) л. - \(bearBar.shared.maasBear[lastIndexMass].beerLiter) за \(bearBar.shared.maasBear[lastIndexMass].prise) рублей \n"
            staticProdanoBeer.append(maasBear.last!)
            maasBear.removeLast()
        }
        
        bearBar.infoOPurchaseAction += bearBar.infoOPurchase
        return bearBar.infoOPurchaseAction
    }
    
    func  closedToBar () -> String {
        maasBear.removeAll()
        return "Смена закончена \n Склад обнулен"
    }
    
    func statisticToBeer() -> String {
//        var z: [()] = []
        var allBeer = 0
        var summBeerSold: Double = 0
        var prodanoBootles = 0
        
        allBeer = staticMassAddBeer.count
       
        
        prodanoBootles = staticProdanoBeer.count
        
        for index in staticProdanoBeer {
            summBeerSold += index.prise
            
        }
        
        
        return "За смену на склад поступило \(allBeer) бутылок пива\nПродано \(prodanoBootles) бутылок \nВыручка \(summBeerSold) рублей"
    }
}








