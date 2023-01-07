//
//  HStackInMultipleLines.swift
//  GridsAndStacks
//
//  Created by Leonardo Medeiros on 07/01/23.
//

import SwiftUI
import LoremSwiftum

struct HStackInMultipleLines: View {
    /*
     let words = [
     "Action Movies are good",
     "Horror one",
     "IT 2",
     "Comedy is good",
     "Adventure Park",
     "Kids",
     "Science Fiction",
     "Drama",
     "Romance",
     "Silicon Valley",
     "Fantasy",
     "Spotlight",
     "Facebook",
     "Auction",
     "Street Fighter",
     "I know what you did last summer",
     "Money Ball",
     "Seinfield",
     "Raymond",
     "Thriller movies are the best!",
     "IT 3"
     ]
     */
    
    let words = Lorem.words(100).split(separator: " ").map {
        String($0)
    }
    
    var body: some View {
        TagsView(items: words)
    }
}

struct HStackInMultipleLines_Previews: PreviewProvider {
    static var previews: some View {
        HStackInMultipleLines()
    }
}

struct TagsView: View {
    let items: [String]
    let screenWidth = UIScreen.main.bounds.width
    var groupedItems: [[String]] = [[String]]()
    
    init(items: [String]) {
        self.items = items
        self.groupedItems = createGroupedItems(items)
    }
    
    private func createGroupedItems(_ items: [String]) -> [[String]] {
        var groupedItems: [[String]] = [[String]]()
        var tempItems: [String] = [String]()
        var widthOfRow: CGFloat = 0
        
        for word in items {
            let label = UILabel()
            label.text = word
            label.sizeToFit()
            
            let labelWidth = label.frame.size.width + 32
            if widthOfRow  + labelWidth + 25 < screenWidth {
                widthOfRow += labelWidth
                tempItems.append(word)
            } else {
                widthOfRow = labelWidth
                groupedItems.append(tempItems)
                tempItems.removeAll()
                tempItems.append(word)
            }
        }
        
        groupedItems.append(tempItems)
        return groupedItems
    }
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                ForEach(groupedItems, id: \.self) { subItems in
                    HStack {
                        ForEach(subItems, id: \.self) { word in
                            Text(word)
                                .fixedSize() // will try forcing to show in only one line
                                .padding()
                                .background(.cyan)
                                .clipShape(RoundedRectangle(cornerRadius: 10.0))
                        }
                    }
                }
                Spacer()
            }
        }
    }
}
