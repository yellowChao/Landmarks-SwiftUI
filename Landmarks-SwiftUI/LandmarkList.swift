//
//  LandmarkList.swift
//  Landmarks-SwiftUI
//
//  Created by Apple on 2020/7/21.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        // \.id 迭代对象中的keypath
        NavigationView {
            
            List(landmarkData) { landmark in
                NavigationLink(destination: ContentView(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }
          
            .navigationTitle("Litst")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        
        ForEach(["iPhone 7", "iPhone XS Max", "iPad Pro (10.5-inch)"], id: \.self) { device in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: device))
                .previewDisplayName(device)
        }
    }
}
