//
//  ScrollViewReaderExample.swift
//  SwiftUI Experiments
//
//  Created by Javier Cueto on 06/08/22.
//

import SwiftUI

struct ScrollViewReaderExample: View {
    var body: some View {
        VStack(spacing: 20.0) {
            HeaderView("ScrollViewReader",
                       subtitle: "Anchor",
                       desc: "You can control the position of where you want the view to go when calling scrollTo.")
            
            ScrollViewReader { scrollViewProxy in
                Button("Scroll 25 To Top") {
                    scrollViewProxy.scrollTo(25, anchor: .top)
                }
                
                HStack(spacing: 20) {
                    Button("Scroll 25 To Center") {
                        scrollViewProxy.scrollTo(25, anchor: .center)
                    }
                    
                    ScrollView {
                        ForEach(1..<51) { index in
                            Image(systemName: "\(index).square.fill")
                                .font(.largeTitle)
                                .frame(height: 70)
                                .foregroundColor(index == 25 ? .red : .gray)
                                .id(index)
                        }
                    }
                }
                
                Button("Scroll 25 To Bottom") {
                    scrollViewProxy.scrollTo(25, anchor: .bottom)
                }
            }
        }
        .font(.title)
        VStack(spacing: 20.0) {
            HeaderView("ScrollViewReader",
                       subtitle: "Introduction",
                       desc: "Use the ScrollViewReader to access the scrollTo function so you can programmatically scroll to a specific view.")
            
            ScrollViewReader { scrollViewProxy in
                Button("Scroll To Bottom") {
                    scrollViewProxy.scrollTo(50)
                }
                
                ScrollView {
                    ForEach(1..<51) { index in
                        getImage(for: index)
                            .font(.largeTitle)
                            .frame(height: 70)
                            .id(index)
                    }
                }
                
                Button("Scroll To Top") {
                    scrollViewProxy.scrollTo(1)
                }
            }
        }
        .font(.title)
    }
    
    func getImage(for index: Int) -> some View {
        if index == 1 || index == 50 {
            return Image(systemName: "\(index).square.fill")
                .foregroundColor(.red)
        }
        return Image(systemName: "\(index).square")
            .foregroundColor(.primary)
    }}

struct ScrollViewReaderExample_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewReaderExample()
    }
}
