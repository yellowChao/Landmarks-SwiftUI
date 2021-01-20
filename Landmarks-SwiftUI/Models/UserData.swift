//
//  UserData.swift
//  Landmarks-SwiftUI
//
//  Created by 黄智超 on 2021/1/20.
//

import Combine
import SwiftUI

class UserData: ObservableObject {
    @Published var isShowFavoired = false
    @Published var landmarks = landmarkData

}
