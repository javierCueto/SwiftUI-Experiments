//
//  Features1.swift
//  SwiftUI Experiments
//
//  Created by Javier Cueto on 05/08/22.
//

import SwiftUI

struct Features1: View {
    
    
    var body: some View {
        ScrollView{
            
            ZStack{
                
                VStack(spacing: 20) {
                    VStack{
                        Text("hey")
                            .font(.title)
                            .frame(maxWidth: .infinity)
                            .padding(30)
                            .background(Color.red)
                        Text("icon here _______")
                        Image(systemName: "gamecontroller").font(.largeTitle)
                        Image("cabos")
                            .background(Color.red)
                            .overlay(Text("Los cabos"))
                            .overlay(Color.red.opacity(0.3))
                        Text("icon here _______")
                        Text("Radius Background shape")
                            .padding()
                            .foregroundColor(.white)
                            .background(RoundedRectangle(cornerRadius: 20).foregroundColor(Color.orange))
                        
                        
                        //priority use cornerRadius
                        Text("corner radius")
                            .padding()
                            .foregroundColor(.white)
                            .background(Color.red)
                            .cornerRadius(20)
                        
                        Image(systemName: "arrow.down.to.line.alt")
                        HStack {
                            Image(systemName: "arrow.right.to.line.alt")
                            Text("Text views pull in")
                            Image(systemName: "arrow.left.to.line.alt")
                        }
                        
                        Image(systemName: "arrow.up.to.line.alt")
                    }
                   
                    
                    VStack{
                        Color.purple
                            .overlay(Image(systemName: "arrow.up.left").padding(), alignment: .topLeading)
                            .overlay(Image(systemName: "arrow.up.right").padding(), alignment: .topTrailing)
                            .overlay(Image(systemName: "arrow.down.left").padding(), alignment: .bottomLeading)
                            .overlay(Image(systemName: "arrow.down.right").padding(), alignment: .bottomTrailing)
                            .overlay(Text("Colors are Push-Out views"))
                    }.frame(height: 200)
                    
                   VStack{
                        Text("Vertical Stack _______")
                        Image(systemName: "1.circle")
                        Image(systemName: "2.circle")
                        Image(systemName: "3.circle")
                    }
                    .border(.red, width: 3)
                    
                    LazyVStack{
                        Text("Lazy vertical stack _______")
                        Image(systemName: "1.circle")
                        Image(systemName: "2.circle")
                        Image(systemName: "3.circle")
                    }
                    .border(.red, width: 3)
                    LazyHStack{
                        Text("Lazy Horizontal stack _______")
                        Image(systemName: "1.circle")
                        Image(systemName: "2.circle")
                        Image(systemName: "3.circle")
                    }
                    .border(.red, width: 3)
                    
                    Divider()
                    
                    LazyVStack(alignment: .trailing, spacing: 20){
                        Text("Lazy vertical stack _______")
                        Image(systemName: "1.circle")
                        Image(systemName: "2.circle")
                        Image(systemName: "3.circle")
                    } .border(.red, width: 3)

                    HStack() {
                        Image(systemName: "1.circle")
                        Spacer()
                        Image(systemName: "2.circle")
                        Spacer()
                        Image(systemName: "3.circle")
                        
                    }.frame(maxWidth: .infinity )
                    .font(.largeTitle)
                        .border(.red, width: 3)
                    
                    Rectangle()
                    
                    VStack{
                        HStack(alignment: .bottom) {
                            Text("Hello")
                            Text("amazing")
                            .font(.largeTitle)
                            Text("developer!")
                            
                        }.border(.red, width: 3)
                        .font(.body)
                        Spacer()
                        HStack(alignment: .firstTextBaseline) {
                            Text("Hello")
                            Text("amazing")
                            .font(.largeTitle)
                            Text("developer!")
                            
                        }.border(.red, width: 3)
                        .font(.body)
                        HStack(spacing: 20) {
                            Image(systemName: "a.circle.fill")
                            Image(systemName: "b.circle.fill")
                            Image(systemName: "c.circle.fill")
                            Image(systemName: "d.circle.fill")
                            Image(systemName: "e.circle.fill")
                            
                        }
                        .font(.largeTitle)
                        .padding()
                        .background(Color.orange)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        
                        
                        HStack {
                            Text("SwiftUI")
                                .font(.largeTitle).lineLimit(1)// Don't let text wrap
                            Image("SwiftUI")
                                .resizable()
                                .frame(width: 80, height: 80)
                            Text("Brings Balance")
                                .font(.largeTitle)
                                .layoutPriority(1) // Truncate last
                            
                        }.padding([.horizontal])
                        Divider()
                        HStack {
                            Text("SwiftUI")
                                .font(.largeTitle)
                                .layoutPriority(1) // Truncate last
                            Image("SwiftUI")
                                .resizable()
                                .frame(width: 80, height: 80)
                            Text("Brings Balance")
                                .font(.largeTitle).lineLimit(1) // Don't let text wrap
                            
                        }.padding(.horizontal)
                            
                    }
                    
               
           
                }
                .font(.body)
               
            }
            .ignoresSafeArea()
            
        }
   
        
    }
}

struct Features1_Previews: PreviewProvider {
    static var previews: some View {
        Features1()
    }
}
