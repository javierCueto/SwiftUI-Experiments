//
//  ZStack.swift
//  SwiftUI Experiments
//
//  Created by Javier Cueto on 06/08/22.
//

import SwiftUI

struct ZStackExample: View {
    var body: some View {
        ZStack {
            Color.gray
                .ignoresSafeArea()
            VStack {
                Text("hey")
                    .font(.title)
                    .frame(maxWidth: .infinity)
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
                Spacer()
                
                ZStack(alignment: .topLeading) {
                    Image("yosemite_large")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    Rectangle()                    .
                    fill(Color.white.opacity(0.6))
                    .frame(maxWidth: .infinity, maxHeight: 60)
                    Text("Yosemite National Park")
                    .font(.title)
                    .padding()
                    
                }
            }

        }
       
    }
}

struct ZStackExample_Previews: PreviewProvider {
    static var previews: some View {
        ZStackExample()
    }
}
