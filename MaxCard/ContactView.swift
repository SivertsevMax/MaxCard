//
//  InfoView.swift
//  MaxCard
//
//  Created by Максим Сиверцев on 12.05.2023.
//

import SwiftUI

struct ContactView: View {
    let colorFrame: Color
    let frameRadius: CGFloat
    let frameWight: CGFloat
    let frameHeight: CGFloat
    let systemImage: String
    let systemImageColor: Color?
    let text: String
    let textSize: CGFloat
    
    var body: some View {
        RoundedRectangle(cornerRadius: frameRadius)
            .fill(colorFrame)
            .frame(width: frameWight, height: frameHeight)
            .overlay(
                HStack {
                    Image(systemName: systemImage)
                        .foregroundColor(systemImageColor)
                    Text(text)
                        .font(Font.system(size: textSize))
                })
    }
}



struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView(
            colorFrame: .white,
            frameRadius: 20,
            frameWight: 350, frameHeight: 50,
            systemImage: "envelope.fill",
            systemImageColor: .green,
            text: "sivertsev1995@icloud.com",
            textSize: 25)
        .previewLayout(.sizeThatFits)
    }
}
