//
//  Data.swift
//  watchOSInvestigation
//
//  Created by Daniel Guerra on 10/11/16.
//  Copyright © 2016 Gerardo Tenorio. All rights reserved.
//

import Foundation
import WatchKit

class Data {
    
    var sBreadType: String
    var bPollo: Bool
    var bJamon: Bool
    var bRes: Bool
    var bTocino: Bool
    var bSalchicha: Bool
    
    init (sBreadReceived: String) {
        sBreadType = sBreadReceived
        bPollo = false
        bJamon = false
        bRes = false
        bTocino = false
        bSalchicha = false
    }
    
    init (sBreadReceived: String, bPolloReceived: Bool, bJamonReceived: Bool, bResReceived: Bool, bTocinoReceived: Bool, bSalchichaReceived: Bool) {
        sBreadType = sBreadReceived
        bPollo = bPolloReceived
        bJamon = bJamonReceived
        bRes = bResReceived
        bTocino = bTocinoReceived
        bSalchicha = bSalchichaReceived
    }
    
}
