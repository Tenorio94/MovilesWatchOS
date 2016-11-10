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
    
    @IBOutlet var labelBread: WKInterfaceLabel!
    
    @IBOutlet var swPollo: WKInterfaceSwitch!
    @IBOutlet var swRes: WKInterfaceSwitch!
    @IBOutlet var swJamon: WKInterfaceSwitch!
    @IBOutlet var swSalchicha: WKInterfaceSwitch!
    @IBOutlet var swTocino: WKInterfaceSwitch!
    
    var sBreadType: String = ""
    var bPollo: Bool = true;
    var bRes: Bool = true;
    var bJamon: Bool = true;
    var bTocino: Bool = true;
    var bSalchicha: Bool = true;
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        if let dataReceived = context as? Data{
            labelBread.setText(dataReceived.sBreadType)
            sBreadType = dataReceived.sBreadType
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
    
    override func contextForSegue(withIdentifier segueIdentifier: String) -> Any? {
        
        if segueIdentifier == "toppingSegue" {
            return Data(sBreadReceived: sBreadType, bPolloReceived: bPollo, bJamonReceived: bJamon, bResReceived: bRes, bTocinoReceived: bTocino, bSalchichaReceived: bSalchicha)
        }
        return nil
    }
    
    // MARK:- Switch Functions
    
    @IBAction func polloChange(_ value: Bool) {
        bPollo = value
    }
    
    @IBAction func jamonChange(_ value: Bool) {
        bJamon = value
    }
    
    @IBAction func resChange(_ value: Bool) {
        bRes = value
    }
    
    @IBAction func salchichaChange(_ value: Bool) {
        bSalchicha = value
    }
    
    @IBAction func tocinoChange(_ value: Bool) {
        bTocino = value
    }
    
    
}
