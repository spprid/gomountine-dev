//
//  PolygonShape.swift
//  gomountine
//
//  Created by 향택 on 10/31/24.
//

import Foundation
import SwiftUICore
import SwiftUI

struct RoundedHexagonView: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let radius = rect.width / 2
        let center = CGPoint(x: rect.midX, y: rect.midY)

        let angle = CGFloat.pi / 3
        for i in 0..<6 {
            let x = center.x + radius * cos(angle * CGFloat(i))
            let y = center.y + radius * sin(angle * CGFloat(i))
            if i == 0 {
                path.move(to: CGPoint(x: x, y: y))
            } else {
                path.addLine(to: CGPoint(x: x, y: y))
            }
        }
        path.closeSubpath()
        return path
    }
}
