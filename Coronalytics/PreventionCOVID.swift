//
//  AboutCOVID.swift
//  COVID-19
//
//  Created by Abhi Kulshrestha on 06/04/20.
//  Copyright © 2020 Abhi Kulshrestha. All rights reserved.
//

import Foundation
import SwiftUI

struct preventioncovid : View{
    var body : some View{
        
            
        
        VStack{
            
        HStack(alignment: .top){
                
                Text("Precautions COVID-19")
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
                VStack(alignment: .leading, spacing: 7){
                    Text("You can protect yourself and help prevent spreading the virus to others if you:")
                    Text("- Wash your hands regularly for 20 seconds, with soap and water or alcohol-based hand rub").foregroundColor(Color.black.opacity(0.5))
                    Text("- Cover your nose and mouth with a disposable tissue or flexed elbow when you cough or sneeze").foregroundColor(Color.black.opacity(0.5))
                    Text("- Avoid close contact (1 meter or 3 feet) with people who are unwell").foregroundColor(Color.black.opacity(0.5))
                    Text("- Stay home and self-isolate from others in the household if you feel unwell")
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


