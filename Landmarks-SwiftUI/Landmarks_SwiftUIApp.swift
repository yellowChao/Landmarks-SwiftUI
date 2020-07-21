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
            LandmarkList()
        }
    }
}

struct Landmarks_SwiftUIApp_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
