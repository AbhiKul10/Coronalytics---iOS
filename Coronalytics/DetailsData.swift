//
//  DetailsData.swift
//  COVID-19
//
//  Created by Abhi Kulshrestha on 06/04/20.
//  Copyright © 2020 Abhi Kulshrestha. All rights reserved.
//

import Foundation
import SwiftUI

struct DetailsData : Decodable, Hashable {
    
    var country : String
    var cases : Double
    var deaths : Double
    var recovered : Double
    var critical : Double
}
