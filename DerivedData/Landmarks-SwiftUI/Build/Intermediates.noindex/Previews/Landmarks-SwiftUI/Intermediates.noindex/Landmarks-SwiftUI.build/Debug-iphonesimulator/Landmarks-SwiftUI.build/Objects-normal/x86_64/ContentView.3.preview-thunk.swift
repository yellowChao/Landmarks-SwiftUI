@_private(sourceFile: "ContentView.swift") import Landmarks_SwiftUI
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/apple/Desktop/Landmarks-SwiftUI/Landmarks-SwiftUI/ContentView.swift", line: 32)
        AnyView(__designTimeSelection(ContentView(), "#3833.[2].[0].property.[0].[0]"))
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/apple/Desktop/Landmarks-SwiftUI/Landmarks-SwiftUI/ContentView.swift", line: 12)
        AnyView(__designTimeSelection(VStack(alignment: .leading) {
            __designTimeSelection(Text(__designTimeString("#3833.[1].[0].property.[0].[0].arg[1].value.[0].arg[0].value.[0].value", fallback: "Turtle Rock"))
                .font(.title), "#3833.[1].[0].property.[0].[0].arg[1].value.[0]")
            __designTimeSelection(HStack {
                __designTimeSelection(Text(__designTimeString("#3833.[1].[0].property.[0].[0].arg[1].value.[1].arg[0].value.[0].arg[0].value.[0].value", fallback: "Joshua Tree National Park"))
                    .font(.subheadline), "#3833.[1].[0].property.[0].[0].arg[1].value.[1].arg[0].value.[0]")
                __designTimeSelection(Spacer(), "#3833.[1].[0].property.[0].[0].arg[1].value.[1].arg[0].value.[1]")
                __designTimeSelection(Text(__designTimeString("#3833.[1].[0].property.[0].[0].arg[1].value.[1].arg[0].value.[2].arg[0].value.[0].value", fallback: "California"))
                    .font(.subheadline), "#3833.[1].[0].property.[0].[0].arg[1].value.[1].arg[0].value.[2]")
            }, "#3833.[1].[0].property.[0].[0].arg[1].value.[1]")
        }
        .padding(), "#3833.[1].[0].property.[0].[0]"))
#sourceLocation()
    }
}

typealias ContentView = Landmarks_SwiftUI.ContentView
typealias ContentView_Previews = Landmarks_SwiftUI.ContentView_Previews