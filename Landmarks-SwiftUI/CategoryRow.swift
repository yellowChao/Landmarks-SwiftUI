//
//  CategoryRow.swift
//  Landmarks-SwiftUI
//
//  Created by 黄智超 on 2021/1/21.
//

import SwiftUI

struct CategoryRow: View {

    var categoryName: String
    var items: [Landmark]

    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.headline)
                .padding(.top, 5)
                .padding(.leading, 15)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0, content: {
                    ForEach(items) { landmark in
                        NavigationLink(destination: ContentView(landmark: landmark)) {
                            CategoryItem(landmark: landmark)
                        }
                    }
                })
            }
            .frame(height: 185)
        }
    }
}

struct CategoryItem: View {
    var landmark: Landmark
    var body: some View {
        VStack(alignment: .center) {
            landmark.image.resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(15)
            Text(landmark.name)
                .foregroundColor(.primary)
        }
        .padding(.leading, 15)
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var previews: some View {
        CategoryRow(categoryName: landmarkData[0].category.rawValue, items: Array(landmarkData.prefix(5)))
    }
}
