//
//  AboutCOVID.swift
//  COVID-19
//
//  Created by Abhi Kulshrestha on 06/04/20.
//  Copyright © 2020 Abhi Kulshrestha. All rights reserved.
//

import Foundation
import SwiftUI

struct aboutcovid : View{
    var body : some View{
        
            
        
        VStack{
            
        HStack(alignment: .top){
                
                Text("About COVID-19")
                    .font(.system(size: 35))
                .fontWeight(.bold)
                    .shadow(color: .black, radius: 10, x: 1, y: 1)
                .foregroundColor(.white)
                    .padding(.leading, 10)
            Spacer()
          
        }
            .padding(.top, (UIApplication.shared.windows.first?.safeAreaInsets.top)! + 50)
        .padding()
            .padding(.bottom,80)
            .background(Color.blue)
            
            
            HStack(spacing : 15){
                VStack(alignment: .leading, spacing: 15){
                    Text("Coronavirus disease 2019 (COVID-19) is an infectious disease caused by severe acute respiratory syndrome coronavirus 2 (SARS-CoV-2). The disease was first identified in December 2019 in Wuhan, the capital of China's Hubei province, and has since spread globally, resulting in the ongoing 2019–20 coronavirus pandemic.  A pneumonia of unknown cause detected in Wuhan, China was first reported to the WHO Country Office in China on 31 December 2019.")
                        .foregroundColor(Color.black.opacity(0.5))
                    
                    
                }
                .padding(.horizontal, 30)
                    .padding(.vertical, 30)
                    .background(Color.white)
                .cornerRadius(12)
                
                }.frame(width: UIScreen.main.bounds.width - 35)
            .offset(y: -60)
            .padding(.bottom, -60)
            .zIndex(25)
            
            Spacer()
    }.background(Color.black.opacity(0.1).edgesIgnoringSafeArea(.all))
    }
}


