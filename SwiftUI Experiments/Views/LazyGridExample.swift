//
//  LazyGridExample.swift
//  SwiftUI Experiments
//
//  Created by Javier Cueto on 06/08/22.
//

import SwiftUI

struct LazyGridExample: View {
    @State private var columnSpacing: CGFloat = 10
    @State private var rowSpacing: CGFloat = 20
    var body: some View {
        


        
        ScrollView {
            VStack(spacing: 20.0) {
                HeaderView("LazyHGrid",
                           subtitle: "Vertical Alignment",
                           desc: "You can control the vertical alignment of each row through the GridItems.", back: .yellow)
                
                HStack(spacing: 20) {
                    VStack(alignment: .trailing, spacing: 20.0) {
                        Text("Bottom")
                        Text("Top")
                        Text("Center")
                    }
                    
                    let rows = [GridItem(GridItem.Size.fixed(50), alignment: .bottom),
                                GridItem(.fixed(50), alignment: .top),
                                GridItem(.fixed(50), alignment: .center)]
                    
                    LazyHGrid(rows: rows) {
                        ForEach(1 ..< 11) { item in
                            Image(systemName: "\(item).circle")
                        }
                        Image(systemName: "arrow.right.circle")
                    }
                    .font(.largeTitle)
                }
            }
            .font(.title)
            
            
            VStack(spacing: 20) {
                HeaderView("LazyHGrid",
                           subtitle: "Spacing Example",
                           desc: "This is just to give you an idea of controlling column and row spacing.", back: .yellow)
                
                let rows = [GridItem(.fixed(40), spacing: rowSpacing),
                            GridItem(.fixed(40), spacing: rowSpacing),
                            GridItem(.fixed(40))]
                
                LazyHGrid(rows: rows, spacing: columnSpacing) {
                    ForEach(1 ..< 11) { item in
                        Color.green
                            .frame(width: 40, height: 40)
                    }
                }
                
                VStack {
                    Slider(value: $columnSpacing, in: 0...40, step: 5,
                           minimumValueLabel: Text("0"),
                           maximumValueLabel: Text("40")) { Text("Minimum Spacing")}
                    Text("Column Spacing: \(Int(columnSpacing))")
                        .padding(.bottom)
                    
                    Slider(value: $rowSpacing, in: 0...40, step: 5,
                           minimumValueLabel: Text("0"),
                           maximumValueLabel: Text("40")) { Text("Minimum Spacing")}
                    Text("Row Spacing: \(Int(rowSpacing))")
                }
                .padding(.horizontal)
            }
            .padding()
            .font(.title)
            
            
            
            VStack(spacing: 20) {
                HeaderView("LazyHGrid",
                           subtitle: "Row Spacing",
                           desc: "Specify the amount of spacing beneath each row by using the GridItem's spacing parameter. This can be used with any GridItem.Size option: fixed, flexible, or adaptive.", back: .yellow)
                
                Text("Top Row Spacing: 40")
                
                Text("Middle Row Spacing: 20")
                
                let rows = [GridItem(spacing: 40),
                            GridItem(spacing: 20),
                            GridItem(),
                            GridItem()]
                
                LazyHGrid(rows: rows) {
                    ForEach(1 ..< 11) { item in
                        Color.green
                            .frame(width: 50)
                    }
                }
            }
            .font(.title)
            
            
            VStack(spacing: 15) {
                HeaderView("LazyHGrid",
                           subtitle: "Adaptive Height",
                           desc: "Let items in the LazyHGrid decide how many rows they need through the GridItem. This example uses only one GridItem.", back: .yellow)
                
                Text("Height Range: 20 to 60")
                
                let rows = [GridItem(.adaptive(minimum: 20, maximum: 60))]
                
                LazyHGrid(rows: rows) {
                    ForEach(1 ..< 21) { item in
                        Color.green
                            .frame(width: 50)
                    }
                    Image(systemName: "arrow.right.circle")
                }
            }
            .font(.title)
            
            
            VStack(spacing: 15) {
                HeaderView("LazyHGrid",
                           subtitle: "Flexible Height",
                           desc: "Give items in a row a flexible height through the GridItem.", back: .yellow)
                
                Text("Top Row Flex: 50 to 60")
                Text("Bottom Row Flex: 20 to 40")
                
                let rows = [GridItem(  .flexible(minimum: 100, maximum: 120)),
                            GridItem(.flexible(minimum: 110, maximum: 120))]
                LazyHGrid(rows: rows) {
                    ForEach(1 ..< 11) { item in
                        Color.green
                            .frame(width: 50)
                    }
                }
                Spacer()
                Text("Top Row Flex: 10 to 20")
                Text("Bottom Row Flex: 20 to 40")
                
                let rows2 = [GridItem(.flexible(minimum: 10, maximum: 20)),
                             GridItem(.flexible(minimum: 20, maximum: 40))]
                LazyHGrid(rows: rows2) {
                    ForEach(1 ..< 11) { item in
                        Color.green
                            .frame(width: 50)
                    }
                }
            }
            .font(.title)
            
            VStack(spacing: 20.0) {
                HeaderView("LazyHGrid",
                           subtitle: "Fixed Height",
                           desc: "Give items in the LazyHGrid a fixed height using the GridItem. This will effectively change the height for the entire row.", back: .yellow)
                
                Text("Fixed Heights: 50, 50, 20, 200")
                
                let rows = [GridItem(GridItem.Size.fixed(50)),
                            GridItem(.fixed(50)),
                            GridItem(.fixed(20)),
                            GridItem(.fixed(200))]
                
                LazyHGrid(rows: rows) {
                    ForEach(1 ..< 11) { item in
                        Image(systemName: "\(item).circle")
                    }
                    Image(systemName: "arrow.right.circle")
                }
                .font(.largeTitle)
            }
            .font(.title)
            
            
            VStack(spacing: 20.0) {
                HeaderView("LazyHGrid",
                           subtitle: "Rows",
                           desc: "You can specify the number of rows with an array of GridItems.", back: .yellow)
                
                Text("Two Rows (2 GridItems):")
                
                let twoRows = [GridItem(), GridItem()]
                
                LazyHGrid(rows: twoRows) {
                    ForEach(1 ..< 11) { item in
                        Image(systemName: "\(item).circle")
                    }
                    Image(systemName: "arrow.right.circle")
                }
                .font(.largeTitle)
                
                Text("Four Rows (4 GridItems):")
                
                let fourRows = [GridItem(), GridItem(), GridItem(), GridItem()]
                LazyHGrid(rows: fourRows) {
                    ForEach(1 ..< 11) { item in
                        Image(systemName: "\(item).circle")
                    }
                    Image(systemName: "arrow.right.circle")
                }
                .font(.largeTitle)
            }
            .font(.body)
            
            
            VStack(spacing: 20.0) {
                HeaderView("LazyHGrid",
                           subtitle: "Rows",
                           desc: "You can specify the number of rows with an array of GridItems.", back: .yellow)
                
                Text("Two Rows (2 GridItems):")
                
                let twoRows = [GridItem(), GridItem()]
                
                LazyHGrid(rows: twoRows) {
                    ForEach(1 ..< 11) { item in
                        Image(systemName: "\(item).circle")
                    }
                    Image(systemName: "arrow.right.circle")
                }
                .font(.largeTitle)
                
                Text("Four Rows (4 GridItems):")
                
                let fourRows = [GridItem(), GridItem(), GridItem(), GridItem()]
                LazyHGrid(rows: fourRows) {
                    ForEach(1 ..< 11) { item in
                        Image(systemName: "\(item).circle")
                    }
                    Image(systemName: "arrow.right.circle")
                }
                .font(.largeTitle)
            }
            .font(.title)
            
            VStack(spacing: 20.0) {
                HeaderView("LazyHGrid",
                           subtitle: "Column Spacing",
                           desc: "Control the spacing between items in the LazyHGrid with the spacing modifier.", back: .yellow)
                
                Text("Spacing: 0")
                
                let gridItems = [GridItem()]
                
                LazyHGrid(rows: gridItems, spacing: 0) {
                    ForEach(1 ..< 6) { item in
                        Image(systemName: "\(item).circle")
                    }
                    Image(systemName: "arrow.right.circle")
                }
                .font(.largeTitle)
                
                Text("Spacing: 20")
                
                LazyHGrid(rows: gridItems, spacing: 20) {
                    ForEach(1 ..< 6) { item in
                        Image(systemName: "\(item).circle")
                    }
                    Image(systemName: "arrow.right.circle")
                }
                .font(.largeTitle)
            }
            .font(.title)
            
            
            VStack(spacing: 20.0) {
                HeaderView("LazyHGrid", subtitle: "Introduction", desc: """
                       The LazyHGrid works like an HStack with two main differences:1. Child views can be arranged in a grid.2. Child views are only created as needed.
                       """)
                let gridItems = [GridItem()]
                
                LazyHGrid(rows: gridItems) {
                    Image(systemName: "1.circle")
                    Image(systemName: "2.circle")
                    Image(systemName: "3.circle")
                    Image(systemName: "4.circle")
                    Image(systemName: "5.circle")
                    Image(systemName: "6.circle")
                    Image(systemName: "7.circle")
                    Image(systemName: "arrow.right.circle")
                    
                }.font(.largeTitle)
                
            }
            .font(.title)
            
        }
    }
}

struct LazyGridExample_Previews: PreviewProvider {
    static var previews: some View {
        LazyGridExample()
    }
}
