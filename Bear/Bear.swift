//
//  Bear.swift
//  Bear
//
//  Created by Cергей Иванович on 4.08.21.
//

import Foundation

public class Bear {
    static var itogInfoToBEar: String = ""
    static var peremennaya = 0
    var bear: String
    var prise: Double
    var countri: String
    var beerLiter: Double
    static var infoToBeerString: String = ""
    
    init(bear: String, prise: Double, countri: String, beerLiter: Double) {
        self.beerLiter = beerLiter
        self.prise = prise
        self.countri = countri
        self.bear = bear
        
    }
    
    static  func infoToBear () -> String {
       
        if Bear.peremennaya == 0 {
            
            infoToBeerString = "Название пива: \(bearBar.shared.maasBear[0].bear) \nСтрана происхождения: \(bearBar.shared.maasBear[0].countri) \nЦена: \(bearBar.shared.maasBear[0].prise) \nОбъем бутылки: \(bearBar.shared.maasBear[0].beerLiter) \n \n"
            Bear.peremennaya += 1
        }
        
        else { if bearBar.shared.maasBear.count == 1 {
            infoToBeerString = "Название пива: \(bearBar.shared.maasBear[0].bear) \nСтрана происхождения: \(bearBar.shared.maasBear[0].countri) \nЦена: \(bearBar.shared.maasBear[0].prise) \nОбъем бутылки: \(bearBar.shared.maasBear[0].beerLiter) \n \n"
        } else {
            
            infoToBeerString = "Название пива: \(bearBar.shared.maasBear[1].bear) \nСтрана происхождения: \(bearBar.shared.maasBear[1].countri) \nЦена: \(bearBar.shared.maasBear[1].prise) \nОбъем бутылки: \(bearBar.shared.maasBear[1].beerLiter) \n \n"
            Bear.peremennaya -= 1
        }
        }
        itogInfoToBEar += infoToBeerString
        return itogInfoToBEar
    }
    
    static func Heiniken() {
        
        let mass = Bear(bear: "Hiniken", prise: 12, countri: "Deutshland", beerLiter: 54)
        
        bearBar.shared.maasBear.append(mass)
        
        bearBar.shared.staticMassAddBeer.append(mass) //массив который будет сохранять все пиво добавленное на склад
    }
    
    
    static func Ziguli () {
        let mass = Bear(bear: "Жигулевское", prise: 12, countri: "Беларусь", beerLiter: 32)
        bearBar.shared.maasBear.append(mass) //
        
        bearBar.shared.staticMassAddBeer.append(mass)//массив который будет сохранять все пиво добавленное на склад

    }
    
}



