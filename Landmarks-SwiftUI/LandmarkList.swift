//
//  LandmarkList.swift
//  Landmarks-SwiftUI
//
//  Created by Apple on 2020/7/21.
//

import SwiftUI

struct LandmarkList: View {

//    @State var isShowFavrited = false
    @EnvironmentObject var userData: UserData
    var body: some View {
        // \.id 迭代对象中的keypath
        List{
            Toggle(isOn: $userData.isShowFavoired, label: {
                Text("收藏开关")
            })
            ForEach(userData.landmarks) { landmark in
                if landmark.isFavorite || !self.userData.isShowFavoired  {
                    NavigationLink(destination: ContentView(landmark: landmark)) {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
        }
        .navigationBarTitle("List")
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
