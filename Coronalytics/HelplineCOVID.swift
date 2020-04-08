//
//  AboutCOVID.swift
//  COVID-19
//
//  Created by Abhi Kulshrestha on 06/04/20.
//  Copyright © 2020 Abhi Kulshrestha. All rights reserved.
//

import Foundation
import SwiftUI
import UIKit

struct helplinecovid : View{
    var phonenumber = "+91-11-23978046"
    var body : some View{
        
            
        
        VStack{
            
        HStack(alignment: .top){
                
                Text("HELPLINE COVID-19")
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
                    Button(action: {
                        if let url = NSURL(string: "tel://\(self.phonenumber)"),
                            UIApplication.shared.canOpenURL(url as URL) {
                            UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
                        }
                    }) {
                        Text("HELPLINE")
                    }
                    
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


