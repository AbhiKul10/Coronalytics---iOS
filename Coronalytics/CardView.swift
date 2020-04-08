//
//  CardView.swift
//  COVID-19
//
//  Created by Abhi Kulshrestha on 06/04/20.
//  Copyright © 2020 Abhi Kulshrestha. All rights reserved.
//

import Foundation
import SwiftUI

struct CardView : View {
var data : DetailsData
var body : some View{
    VStack(alignment: .leading, spacing: 12) {
        
        Text(data.country)
            .fontWeight(.bold)
        HStack(spacing : 15){
            VStack(alignment: .leading, spacing: 15){
                Text("Active Cases")
                    .font(.system(size: 20))
                
                Text(getValue(data: data.cases))
                .font(.title)
            }
            VStack(alignment: .leading, spacing: 10){
                HStack(spacing: 10){
                    Text("Deaths :- ")
                    
                    Text(getValue(data: data.deaths))
                        .foregroundColor(.red)
                }
                Divider()
                
                HStack(spacing: 10){
                    Text("Recovered :- ")
                    
                    Text(getValue(data: data.recovered))
                        .foregroundColor(.green)
                }
                Divider()
                
                HStack(spacing: 10){
                    Text("Critical :- ")
                    
                    Text(getValue(data: data.critical))
                        .foregroundColor(.yellow)
                }
          
                }
            }
        }
    .padding()
    .frame(width: UIScreen.main.bounds.width - 30)
    .frame(height : UIScreen.main.bounds.height / 3.5)
    .background(Color.white)
    .cornerRadius(20)
    }
}
