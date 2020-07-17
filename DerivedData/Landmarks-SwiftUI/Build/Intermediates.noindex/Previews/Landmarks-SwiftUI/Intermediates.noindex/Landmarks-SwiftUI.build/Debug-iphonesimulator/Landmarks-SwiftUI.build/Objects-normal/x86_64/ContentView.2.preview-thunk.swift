@_private(sourceFile: "ContentView.swift") import Landmarks_SwiftUI
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/apple/Desktop/Landmarks-SwiftUI/Landmarks-SwiftUI/ContentView.swift", line: 32)
        AnyView(ContentView())
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/apple/Desktop/Landmarks-SwiftUI/Landmarks-SwiftUI/ContentView.swift", line: 12)
        AnyView(VStack(alignment: .leading) {
            Text(__designTimeString("#3833.[1].[0].property.[0].[0].arg[1].value.[0].arg[0].value.[0].value", fallback: "Turtle Rock"))
                .font(.title)
            HStack {
                Text(__designTimeString("#3833.[1].[0].property.[0].[0].arg[1].value.[1].arg[0].value.[0].arg[0].value.[0].value", fallback: "Joshua Tree National Park"))
                    .font(.subheadline)
                Spacer()
                Text(__designTimeString("#3833.[1].[0].property.[0].[0].arg[1].value.[1].arg[0].value.[2].arg[0].value.[0].value", fallback: "California"))
                    .font(.subheadline)
            }
        }
        .padding())
#sourceLocation()
    }
}

typealias ContentView = Landmarks_SwiftUI.ContentView
typealias ContentView_Previews = Landmarks_SwiftUI.ContentView_Previews