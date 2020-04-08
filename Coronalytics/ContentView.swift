//
//  ContentView.swift
//  COVID-19
//
//  Created by Abhi Kulshrestha on 05/04/20.
//  Copyright © 2020 Abhi Kulshrestha. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.black.opacity(0.1).edgesIgnoringSafeArea(.all)
        MainView().padding(.bottom, 120)
    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



func getDate(time : Double)->String{
    
    let date = Double(time / 1000)
    
    let format = DateFormatter()
    format.dateFormat = "MMM - dd - YYYY hh:mm a"
    return format.string(from: Date(timeIntervalSince1970: TimeInterval(exactly: date)!))
        
    }

func getValue(data : Double)->String{
    let format = NumberFormatter()
    format.numberStyle = .decimal
    
    return format.string(for: data)!
}
    








class getData : ObservableObject{
    @Published var data : CoronaData!
    @Published var countries = [DetailsData]()
    
    init(){
        updateData()
    }
    func updateData(){
        let url = "https://corona.lmao.ninja/all"
        let url1 = "https://corona.lmao.ninja/countries/"
        
        let session = URLSession(configuration: .default)
        let session1 = URLSession(configuration: .default)
        
        session.dataTask(with: URL(string: url)!) { (data, _, err) in
            
                   if err != nil{
                               print((err?.localizedDescription)!)
                               return
                           }
                           let json = try! JSONDecoder().decode(CoronaData.self, from: data!)
                           
                           DispatchQueue.main.async {
                            self.data = json
                           }
                       }.resume()
        
        
        for i in country{
            session1.dataTask(with: URL(string: url1+i)!) {(data, _,err) in
                if err != nil{
                    print((err?.localizedDescription)!)
                    return
                }
                let json = try! JSONDecoder().decode(DetailsData.self, from: data!)
                
                DispatchQueue.main.async {
                    self.countries.append(json)
                }
            }.resume()
        }
        
        
    }
}

var country = ["india","usa","italy","china","australia"]

struct Indicator: UIViewRepresentable {
    func makeUIView(context: UIViewRepresentableContext<Indicator>) -> UIActivityIndicatorView {
        
        let view = UIActivityIndicatorView(style: .large)
        view.startAnimating()
        return view
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: UIViewRepresentableContext<Indicator>) {
        
        
    }
}
