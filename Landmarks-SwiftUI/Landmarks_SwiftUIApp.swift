//
//  Landmarks_SwiftUIApp.swift
//  Landmarks-SwiftUI
//
//  Created by Apple on 2020/7/17.
//

import SwiftUI

@main
struct Landmarks_SwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            CategoryHome()
                .environmentObject(UserData())
        }
    }
}

//预览视图
struct Landmarks_SwiftUIApp_Previews: PreviewProvider {
    static var previews: some View {
//        LandmarkList()
        VStack(alignment: .center, content: {
            Image("turtlerock")
                .clipShape(Circle())
                .overlay(
                    Circle().stroke(Color.gray, lineWidth: 4)
                )
                .shadow(color: .gray, radius: 10)
        })
    }
}
