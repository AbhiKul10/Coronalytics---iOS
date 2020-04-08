//
//  AboutCOVID.swift
//  COVID-19
//
//  Created by Abhi Kulshrestha on 06/04/20.
//  Copyright © 2020 Abhi Kulshrestha. All rights reserved.
//

import Foundation
import SwiftUI

struct symptomscovid : View{
    var body : some View{
        
            
        
        VStack{
            
        HStack(alignment: .top){
                
                Text("Symptoms COVID-19")
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
                    Text("Signs and symptoms of COVID-19 may appear two to 14 days after exposure and can include:")

                    Text("- Fever").foregroundColor(Color.black.opacity(0.5))
                    Text("- Cough").foregroundColor(Color.black.opacity(0.5))
                    Text("- Shortness of breath or difficulty breathing").foregroundColor(Color.black.opacity(0.5))
                    Text("Other symptoms can include:")

                    Text("- Tiredness").foregroundColor(Color.black.opacity(0.5))
                    Text("- Aches").foregroundColor(Color.black.opacity(0.5))
                    Text("- Runny nose").foregroundColor(Color.black.opacity(0.5))
                    Text("- Sore throat").foregroundColor(Color.black.opacity(0.5))
                    Text("Some people have experienced the loss of smell or taste.")
                        
                    
                    
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


