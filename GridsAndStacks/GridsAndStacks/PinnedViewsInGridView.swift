//
//  PinnedViewsInGridView.swift
//  GridsAndStacks
//
//  Created by Leonardo Medeiros on 07/01/23.
//

import SwiftUI

struct PinnedViewsInGridView: View {
    let columns = [
        GridItem(.flexible(minimum: 100)),
        GridItem(.flexible(minimum: 100)),
        GridItem(.flexible(minimum: 100))
    ]
    
    private func headerView (_ index: Int) -> some View {
        return Text("Section \(index)")
            .font(.title)
            .frame(minWidth: 100, maxWidth: .infinity)
            .padding()
            .background(.cyan)
            .foregroundColor(.black)
    }
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, pinnedViews: [.sectionHeaders], content: {
                    
                    ForEach(1..<10) { header in
                        Section(header: headerView(header)) {
                            let sectionCount = Int.random(in: 5..<22)
                            ForEach(1..<sectionCount) { index in
                                Text("\(index)")
                                    .frame(minWidth: 100)
                                    .padding()
                                    .background(.blue)
                                    .foregroundColor(.white)
                            }
                            
                        }
                    }
                    
                })
            }
            .navigationTitle("Items")
        }
    }
}

struct PinnedViewsInGridView_Previews: PreviewProvider {
    static var previews: some View {
        PinnedViewsInGridView()
    }
}
