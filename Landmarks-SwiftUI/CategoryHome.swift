//
//  CategoryHome.swift
//  Landmarks-SwiftUI
//
//  Created by 黄智超 on 2021/1/20.
//

import SwiftUI

struct CategoryHome: View {

    @State var showingProfile = false

    var categories: [String: [Landmark]] {
        Dictionary(grouping: landmarkData) { (item) -> String in
            item.category.rawValue
        }
    }

    var featured: [Landmark] {
        landmarkData.filter { $0.isFeatured }
    }

    //
    var profileButton: some View {
        Button(action: { self.showingProfile.toggle() }) {
            Image(systemName: "person.crop.circle")
                .imageScale(.large)
                .accessibility(label: Text("User Profile"))
                .padding()
        }
    }

    var body: some View {
        NavigationView {
            List {
                FeatrueView(landmarks: featured)
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                ForEach(categories.keys.sorted(), id: \.self) { key in
                    CategoryRow(categoryName: key, items: categories[key] ?? [])
                }
                .listRowInsets(EdgeInsets())

                NavigationLink(destination: LandmarkList()) {
                    Text("See All")
                }
            }
                .navigationTitle(Text("Feature"))
            .navigationBarItems(trailing: profileButton)

            //展示一个present的视图
            .sheet(isPresented: $showingProfile) {
                Text("User Profile")
            }
        }
    }
}

struct FeatrueView: View {
    var landmarks: [Landmark]
    var body: some View {
        landmarks[0].image.resizable()
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
    }
}
