//
//  GeometryReaderExample.swift
//  SwiftUI Experiments
//
//  Created by Javier Cueto on 06/08/22.
//

import SwiftUI

struct GeometryReaderExample: View {
    var body: some View {

        
        ScrollView{
            VStack(spacing: 20) {
                HeaderView("GeometryReader", subtitle: "Alignment", desc: "Child views within the GeometryReader are aligned in the upper left corner by default.", back: .clear)
                
                
                GeometryReader { geometry in
                    
                    VStack(alignment: .leading, spacing: 20) {
                        Text("Local Coordinate Space")
                        HStack(spacing: 10) {                        // I'm converting to Int just so we don't have so many zeros
                            Text("minX: \(Int(geometry.frame(in: .local).minX))")
                            Spacer()
                            Text("midX: \(Int(geometry.frame(in: .local).midX))")
                            Spacer()
                            Text("maxX: \(Int(geometry.frame(in: .local).maxX))")
                            
                        }
                        Text("Global Coordinate Space")
                        HStack(spacing: 10) {                        // I'm converting to Int just so we don't have so many zeros
                            Text("minX: \(Int(geometry.frame(in: .global).minX))")
                            Spacer()
                            Text("midX: \(Int(geometry.frame(in: .global).midX))")
                            Spacer()
                            Text("maxX: \(Int(geometry.frame(in: .global).maxX))")
                            
                        }
                        
                    }.padding(.horizontal)
                    
                }.frame(height: 200)
                    .foregroundColor(.white)
                    .background(Color.pink)
                
                
                
                
                HStack {
                    GeometryReader { geometry in
                        VStack(spacing: 10) {
                            Text("minY: \(Int(geometry.frame(in: .global).minY))")
                            Spacer()
                            Text("midY: \(Int(geometry.frame(in: .global).midY))")
                            Spacer()
                            Text("maxY: \(Int(geometry.frame(in: .global).maxY))")
                            
                        }.padding(.vertical)
                        
                    }
                    .frame(height: 190)
                    .foregroundColor(.white)
                    .background(Color.pink)
                    Image("MinMidMax")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    
                }
                
                
                
                GeometryReader { geometryProxy in
                    VStack(spacing: 10) {
                        Text("X: \(geometryProxy.frame(in: .global).origin.x)")
                        Text("Y: \(geometryProxy.frame(in: .global).origin.y)")
                    }.foregroundColor(.white)
                }
                .background(Color.pink)
                .frame(height: 200)
                
                
                GeometryReader { geometryProxy in
                    
                    VStack{
                        Text("Width \(geometryProxy.size.width)")
                        Text("Height \(geometryProxy.size.height)")
                        Image(systemName: "arrow.up.left")
                            .padding()
                        
                        Image(systemName: "18.circle")
                            .padding()
                        
                        Image(systemName: "20.circle")
                            .padding()
                        
                        Image(systemName: "50.circle")
                            .padding()
                        
                        
                    }
                    
                    
                    
                    Text("Trailing button \(geometryProxy.size.height)")
                        .position(x: geometryProxy.size.width - 90, y: geometryProxy.size.height - 40)
                }
                .background(Color.pink)
                
            }
            .font(.body)
            .padding(.horizontal)
            
        }
        GeometryReader { geometryProxy in
            VStack {
                Text("geometryProxy.safeAreaInsets.leading: \(geometryProxy.safeAreaInsets.leading)")
                Text("geometryProxy.safeAreaInsets.trailing: \(geometryProxy.safeAreaInsets.trailing)")
                Text("geometryProxy.safeAreaInsets.top: \(geometryProxy.safeAreaInsets.top)")
                Text("geometryProxy.safeAreaInsets.bottom: \(geometryProxy.safeAreaInsets.bottom)")
                
            }    .padding()
            
        }.frame(height: 190)
            .background(Color.pink).foregroundColor(.white)
    }
}

struct GeometryReaderExample_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReaderExample()
    }
}
