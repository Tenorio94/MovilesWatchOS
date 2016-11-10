//
//  InterfaceController.swift
//  watchOSInvestigation WatchKit Extension
//
//  Created by Daniel Guerra on 09/11/16.
//  Copyright © 2016 Gerardo Tenorio. All rights reserved.
//

import WatchKit
import Foundation

class InterfaceController: WKInterfaceController {

    @IBOutlet var sliderBread: WKInterfaceSlider!
    @IBOutlet var labelBreadName: WKInterfaceLabel!
    
    var sBreadType: String = "Pan Integral"
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        
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

    override func contextForSegue(withIdentifier segueIdentifier: String) -> Any? {
        if segueIdentifier == "breadSegue" {
            return Data(sBreadReceived: sBreadType)
        }
        return nil
    }
    
    
    @IBAction func valueChanged(_ value: Float) {
        
        switch (Int(round(value))) {
            case 1 :
                labelBreadName.setText("Pan Integral")
                sBreadType = "Pan Integral"
                break
            case 2 :
                labelBreadName.setText("Pan Parmesano")
                sBreadType = "Pan Parmesano"
                break
            case 3 :
                labelBreadName.setText("Pan Orégano")
                sBreadType = "Pan Orégano"
                break
            case 4 :
                labelBreadName.setText("Pan Italiano")
                sBreadType = "Pan Italiano"
                break
            default :
                labelBreadName.setText("Pan Blanco")
                sBreadType = "Pan Blanco"
                break
        }
        
    }
    
    
}
