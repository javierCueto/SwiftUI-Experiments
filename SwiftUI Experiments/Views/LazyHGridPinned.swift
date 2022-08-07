//
//  LazyHGridPinned.swift
//  SwiftUI Experiments
//
//  Created by Javier Cueto on 06/08/22.
//

import SwiftUI

struct LazyHGridPinned: View {
    @State private var teams = Data.getTeams()
    var body: some View {
        VStack(spacing: 15) {
            HeaderView("LazyHGrid",
                       subtitle: "Pinned Views",
                       desc: "LazyHGrids can also have section headers and section footers that can be pinned so they only scroll when the next header/footer comes.", back: .yellow)
            
            let rows = [GridItem(.adaptive(minimum: 150, maximum: 300))]
            
            ScrollView(.horizontal) {
                LazyHGrid(rows: rows, pinnedViews: [.sectionHeaders, .sectionFooters]) {
                    ForEach(teams) { team in
                        Section {
                            ForEach(team.people) { person in
                                Image("\(person.imageName)")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                            }
                        } header: {
                            TeamHeaderHGridView(team: team)
                        } footer: {
                            TeamFooterHGridView(team: team)
                        }
                    }
                }
            }
        }
        .font(.title)
    }
}

struct TeamHeaderHGridView: View {
    var team: Data.Team
    
    var body: some View {
        VStack(spacing: 8) {
            Spacer()
            Text("Team")
                .font(.title2)
            Image(systemName: team.imageName)
                .font(.system(size: 50))
            Spacer()
            Spacer()
        }
        .frame(width: 75)
        .background(Rectangle()
                        .fill(Color.yellow)
                        .opacity(0.9))
    }
}

struct TeamFooterHGridView: View {
    var team: Data.Team

    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            Text("Total")
                .font(.title2)
            Text("\(team.people.count)")
                .font(.largeTitle)
                .fontWeight(.bold)
            Spacer()
            Spacer()
        }
        .frame(width: 60)
        .background(Rectangle()
                        .fill(Color.yellow)
                        .opacity(0.9))
    }
}


struct LazyHGridPinned_Previews: PreviewProvider {
    static var previews: some View {
        LazyHGridPinned()
    }
}
