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
    @IBOutlet var labelPollo: WKInterfaceLabel!
    @IBOutlet var labelJamon: WKInterfaceLabel!
    @IBOutlet var labelRes: WKInterfaceLabel!
    @IBOutlet var labelSalchicha: WKInterfaceLabel!
    @IBOutlet var labelTocino: WKInterfaceLabel!
    
    
    var sSummary: String = ""
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        
        if let dataReceived = context as? Data{
            sSummary = dataReceived.sBreadType
            labelResumen.setText(sSummary)
            
            if (dataReceived.bPollo) {
                labelPollo.setHidden(false)
                labelPollo.setText("Pollo")
            }
            else {
                labelPollo.setHidden(true)
            }
            
            if (dataReceived.bJamon) {
                labelJamon.setHidden(false)
                labelJamon.setText("Jamón")
            }
            else {
                labelJamon.setHidden(true)
            }
            
            if (dataReceived.bRes) {
                labelRes.setHidden(false)
                labelRes.setText("Res")
            }
            else {
                labelRes.setHidden(true)
            }
            
            if (dataReceived.bSalchicha) {
                labelSalchicha.setHidden(false)
                labelSalchicha.setText("Salchicha")
            }
            else {
                labelSalchicha.setHidden(true)
            }
            
            if (dataReceived.bTocino) {
                labelTocino.setHidden(false)
                labelTocino.setText("Tocino")
            }
            else {
                labelTocino.setHidden(true)
            }
            
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
