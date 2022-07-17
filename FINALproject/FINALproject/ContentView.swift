//
//  ContentView.swift
//  FINALproject
//
//  Created by Rawaah Alanbaei on 15/07/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var image1 = ["bleed", "hp", "crown", "narnia", "roll", "books", "smart", "tote"]
    @State var large = ""
    
    var body: some View {
        ZStack{
            VStack{
                
                HStack{
                
                Text("")
                        .padding()
                    
                Image("pin")
                    .padding()
                    .frame(width: 20, height: 20)
                    .scaledToFit()
                
                Spacer()
                
                    Text("Your Feed")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.899, green: 0.123, blue: 0.275))
                    .padding()
                
                Spacer()
                
                Image("pin")
                    .padding()
                    .frame(width: 20, height: 20)
                    .scaledToFit()
                    
                Text("")
                        .padding()
                    
                }
                
                Divider()
                
                Image(large)
                    .cornerRadius(20)
                    .frame(width: 250, height: 250)
                    .scaledToFit()
                    .padding()
                    .ignoresSafeArea()
                
                //Spacer()
                
                ScrollView(){
                    VStack{
                            ForEach(image1, id:\.self) { pic in
                                Image(pic)
                                    .padding()
                                    .frame(width: 350, height: 350)
                                    .scaledToFit()
                                    .cornerRadius(20)
                                    .onTapGesture {
                                        large = pic
                                        }
                                }
                        }
                    }
                    
                    
                }
                
            }
        }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
