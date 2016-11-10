//
//  ConfirmController.swift
//  watchOSInvestigation
//
//  Created by Daniel Guerra on 09/11/16.
//  Copyright © 2016 Gerardo Tenorio. All rights reserved.
//

import UIKit
import WatchKit

class ConfirmController: WKInterfaceController {

    @IBOutlet var labelResumen: WKInterfaceLabel!
    
    var sSummary: String = ""
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        if let dataReceived = context as? Data{
            sSummary = dataReceived.sBreadType
            labelResumen.setText(sSummary)
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
