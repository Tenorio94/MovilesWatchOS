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

    @IBAction func valueChanged(_ value: Float) {
        
        switch (Int(round(value))) {
            case 1 :
                labelBreadName.setText("Pan Integral")
                break
            case 2 :
                labelBreadName.setText("Pan Parmesano")
                break
            case 3 :
                labelBreadName.setText("Pan Orégano")
                break
                case 3 :
                    labelBreadName.setText("Pan Italiano")
                    break
            default :
                labelBreadName.setText("Pan Blanco")
                break
        }
        
    }
    
    
}
