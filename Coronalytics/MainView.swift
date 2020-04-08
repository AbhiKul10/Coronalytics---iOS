//
//  MainView.swift
//  COVID-19
//
//  Created by Abhi Kulshrestha on 06/04/20.
//  Copyright © 2020 Abhi Kulshrestha. All rights reserved.
//

import Foundation
import SwiftUI

struct MainView : View{
    @State var show = false
    @ObservedObject var data = getData()
    var body : some View{

        
        VStack{
            if self.data.countries.count != 0 && self.data.data != nil{
                VStack{
                    HStack(alignment: .top){
                        
                        VStack(alignment: .center, spacing: 10){
                        
                            Text(getDate(time: self.data.data.updated))
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                        
                        Text("COVID-19 Cases")
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        
                            Text(getValue(data: self.data.data.cases))
                                
                                
                        .fontWeight(.bold)
                                .shadow(color: .black, radius: 10, x: 1, y: 1)
                            .font(.system(size: 40))
                        .foregroundColor(.white)
                        }.padding(.leading, UIScreen.main.bounds.width / 5)
                        Spacer()
                    
                    Button(action: {
                        self.data.data = nil
                        self.data.countries.removeAll()
                        self.data.updateData()
                    }) {
                        Image(systemName: "arrow.clockwise")
                            .font(.title)
                            .foregroundColor(.white)
                    }
                }
                    .padding(.top, (UIApplication.shared.windows.first?.safeAreaInsets.top)! + 50)
                .padding()
                    .padding(.bottom,80)
                    .background(Color.blue)
                    
                    HStack(spacing : 15){
                        VStack(alignment: .leading, spacing: 15){
                            Text("Deaths")
                                .foregroundColor(Color.black.opacity(0.5))
                            
                            Text(getValue(data: self.data.data.deaths))
                                //.font(.subheadline)
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                                .foregroundColor(.red)
                        }.padding(.horizontal, 20)
                            .padding(.vertical, 30)
                            .background(Color.white)
                        .cornerRadius(12)
                        
                        VStack(alignment: .leading, spacing: 15){
                            Text("Recovered")
                                .foregroundColor(Color.black.opacity(0.5))
                            
                            Text(getValue(data: self.data.data.recovered))
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                                .foregroundColor(.green)
                        }.padding(.horizontal, 20)
                            .padding(.vertical, 30)
                            .background(Color.white)
                        .cornerRadius(12)
                        
                        VStack(alignment: .center, spacing: 15){
                            Text("Active")
                                .foregroundColor(Color.black.opacity(0.5))
                            
                            Text(getValue(data: self.data.data.active))
                                .font(.system(size: 20))

                                .fontWeight(.bold)
                                .foregroundColor(.yellow)
                        }.padding(.horizontal, 20)
                            .padding(.vertical, 30)
                            .background(Color.white)
                        .cornerRadius(12)
                        }.frame(width: UIScreen.main.bounds.width - 15)
                    .offset(y: -60)
                    .padding(.bottom, -60)
                    .zIndex(25)
                    
                    expandable(show : $show).padding(.top, 40)
                     
                    Spacer()
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 15){
                            
                            ForEach(self.data.countries, id: \.self){i in
                                
                                CardView(data: i)
                                
                            }
                            
                        }
                    .padding()
                    }
                   
                }.padding(.top, 60)
            }
            else{
                GeometryReader{_ in
                    VStack{
                        Indicator()
                    }
                }
            }
        }.edgesIgnoringSafeArea(.top)
            //.background(Color.black.opacity(0.1).edgesIgnoringSafeArea(.all))
  
}
}

struct expandable : View{
    @State var isProfileViewPresentedAbout = false
    @State var isProfileViewPresentedSymptoms = false
    @State var isProfileViewPresentedPrevention = false
    @State var isProfileViewPresentedHelpline = false
    
    @Binding var show : Bool
    var body : some View{
        ZStack{
        HStack{
            if self.show{
                
                Button(action: {
                      self.isProfileViewPresentedAbout = true
                    }) {
                        Image(systemName: "tv.fill").resizable().frame(width: 25, height: 15).padding(22)
                    }.sheet(isPresented: $isProfileViewPresentedAbout, content: { aboutcovid() }).foregroundColor(.primary)
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                .clipShape(Circle())
                
                Button(action: {
                    self.isProfileViewPresentedSymptoms = true
                    }) {
                        Image(systemName: "cart.fill").resizable().frame(width: 25, height: 15).padding(22)
                    }.sheet(isPresented: $isProfileViewPresentedSymptoms, content: { symptomscovid() }).foregroundColor(.primary)
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                .clipShape(Circle())
                
                
                
            }
            Button(action: {
                    self.show.toggle()
                }) {
                    Image(systemName: "chevron.up").resizable().frame(width: 25, height: 15).padding(22)
                }
                .background(Color.blue)
                .foregroundColor(Color.white)
            .clipShape(Circle())
                .rotationEffect(.degrees( show ? 180 : 0))
            
            if self.show{
                
                Button(action: {
                       self.isProfileViewPresentedPrevention = true
                    }) {
                        Image(systemName: "tv.fill").resizable().frame(width: 25, height: 15).padding(22)
                    }.sheet(isPresented: $isProfileViewPresentedPrevention, content: { preventioncovid() }).foregroundColor(.primary)
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                .clipShape(Circle())
                
                Button(action: {
                      self.isProfileViewPresentedHelpline = true
                    }) {
                        Image(systemName: "cart.fill").resizable().frame(width: 25, height: 15).padding(22)
                    }.sheet(isPresented: $isProfileViewPresentedHelpline, content: { helplinecovid() }).foregroundColor(.primary)
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                .clipShape(Circle())
                
                
                
            }
            
            
             
        }.animation(.spring())
       
    }
    }
}
 
