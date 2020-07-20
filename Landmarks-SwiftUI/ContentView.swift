//
//  ContentView.swift
//  Landmarks-SwiftUI
//
//  Created by Apple on 2020/7/17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
            }
            .padding()
            Spacer()
        }
    }
}


//在协议前面标记上 some 后，返回值的类型对编译器就变成透明的了。
//在这个值使用的时候编译器可以根据返回值进行类型推断得到具体类型。
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
