//
//  CoronaData.swift
//  COVID-19
//
//  Created by Abhi Kulshrestha on 06/04/20.
//  Copyright © 2020 Abhi Kulshrestha. All rights reserved.
//

import Foundation
import SwiftUI


struct CoronaData : Decodable {
    var cases : Double
    var deaths : Double
    var updated : Double
    var recovered : Double
    var active : Double
}
