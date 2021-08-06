//
//  ViewController.swift
//  Bear
//
//  Created by Cергей Иванович on 3.08.21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var addBeerOutlet: UIView!
    @IBOutlet weak var outputToTheScreen: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        print (Bear.Heiniken())
    
    }

    @IBAction func addBeerAction(_ sender: Any) {
        bearBar.shared.addBearToTheWrehouse()
        outputToTheScreen.text = Bear.infoToBear()
        
//        outputToTheScreen.text = Bear.infoToBear()
       }
    
   
    @IBAction func BeerPurchase(_ sender: Any) {

        outputToTheScreen.text = bearBar.shared.pourABeer()
    }
    @IBAction func closedOfBarAction(_ sender: Any) {
        outputToTheScreen.text = bearBar.shared.closedToBar()
        Bear.itogInfoToBEar = ""
        
    }
    @IBAction func StatisticAction(_ sender: Any) {
        bearBar.shared.statisticToBeer()
        outputToTheScreen.text = bearBar.shared.statisticToBeer()
    }
}


    

