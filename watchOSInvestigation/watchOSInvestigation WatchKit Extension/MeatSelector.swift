//
//  MeatSelector.swift
//  watchOSInvestigation
//
//  Created by Daniel Guerra on 09/11/16.
//  Copyright © 2016 Gerardo Tenorio. All rights reserved.
//

import UIKit
import WatchKit

class MeatSelector: WKInterfaceController {

    @IBOutlet var table: WKInterfaceTable!
    
    let stringToppings = ["Matthew", "Mark", "Luke", "John"]

    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        table.setNumberOfRows(stringToppings.count, withRowType: "NameRowControllerIdentifier")
        
        for (index, name) in stringToppings.enumerated() {
            let row = table.rowController(at: index) as? NameRowController
            row?.swTopping.setTitle(name)
        }
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    
}
