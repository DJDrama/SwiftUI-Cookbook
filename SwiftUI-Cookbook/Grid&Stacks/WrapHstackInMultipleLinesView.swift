//
//  WrapHstackInMultipleLinesView.swift
//  SwiftUI-Cookbook
//
//  Created by Dongjun Lee on 12/26/24.
//

import SwiftUI

struct WrapHstackInMultipleLinesView: View {
    let words = [
        "Action", "Horror one", "🐇", "IT 2", "Comedy is good", "Adventure Park", "Kids", "Science Fiction", "Drama", "Romance", "ET", "Silicon Valley", "Fantasy", "Spotlight", "Facebook", "I know what you did last summer", "Money Ball", "Seinfeld", "Raymond", "Thriller movies are the best movies!", "IT 3"
    ]
    var body: some View {
        TagsView(items: words)
    }
}



#Preview {
    WrapHstackInMultipleLinesView()
}

struct TagsView: View {
    let screenWidth = UIScreen.main.bounds.width
    let items: [String]
    var groupedItems: [[String]] = [[String]]()
    
    init(items: [String]){
        self.items = items
        groupedItems = createGroupedItems(items)
    }
    
    private func createGroupedItems(_ items: [String]) -> [[String]] {
        var groupedItems: [[String]] = [[String]]()
        var tempItem: [String] = [String]()
        var width: CGFloat = 0
        for word in items {
            let label = UILabel()
            label.text = word
            label.sizeToFit()
            let labelWidth = label.frame.size.width + 32
            
            if (width + labelWidth + 32) < screenWidth {
                width += labelWidth
                tempItem.append(word)
            }else {
                width = labelWidth
                groupedItems.append(tempItem)
                tempItem.removeAll()
                tempItem.append(word)
            }
        }
        groupedItems.append(tempItem)
        return groupedItems
    }
    
    var body: some View{
        VStack(alignment:.leading) {
            ForEach(groupedItems, id:\.self) { subItems in
                HStack {
                    ForEach(subItems, id: \.self) { word in
                        Text(word)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous))
                    }
                }
            }
            Spacer()
        }
    }
}
