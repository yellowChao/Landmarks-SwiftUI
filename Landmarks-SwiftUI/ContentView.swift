//
//  ContentView.swift
//  Landmarks-SwiftUI
//
//  Created by Apple on 2020/7/17.
//

import SwiftUI

struct ContentView: View {

    @EnvironmentObject var userData: UserData
    var landmark: Landmark

    var currentIndex: Int {
        userData.landmarks.firstIndex(where: { $0.id == landmark.id})!
    }
    
    var body: some View {
        VStack {
            MapView(coordinate: landmark.locationCoordinate)
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {

                HStack {
                    Text(landmark.name)
                        .font(.title)
                    Button(action: {
                        userData.landmarks[currentIndex].isFavorite.toggle()
                    }, label: {
                        let isFavorite = userData.landmarks[currentIndex].isFavorite
                        Image(systemName: "star.fill")
                            .foregroundColor(isFavorite ? .yellow : .gray)
                    })
                }
                
                HStack {
                    Text(landmark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                }
            }
            .padding()
            Spacer()
        }
        .navigationBarTitle(Text(landmark.name), displayMode: .inline)
    }
}


//在协议前面标记上 some 后，返回值的类型对编译器就变成透明的了。
//在这个值使用的时候编译器可以根据返回值进行类型推断得到具体类型。
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(landmark: landmarkData[1])
    }
}
