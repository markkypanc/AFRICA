//
//  HeadingView.swift
//  Africa
//
//  Created by Mark Rachapoom on 19/3/21.
//

import SwiftUI

struct HeadingView: View {
    // MARK: - PROPERTIES
    
    let headingImage: String
    let headingText: String
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Image(systemName: headingImage)
                .foregroundColor(Color.accentColor)
                .imageScale(.large)
            Text(headingText)
                .font(.title3)
                .fontWeight(.bold)
        }//: HSTACK
        .padding(.vertical)
    }
}

    // MARK: - PREVIEW
struct HeadingView_Previews: PreviewProvider {
    
    static var previews: some View {
        HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
