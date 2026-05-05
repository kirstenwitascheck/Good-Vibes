import SwiftUI
import Combine


final class DisplaySettings: ObservableObject {
    @Published var displayText: String = "Hold up your phone!"
    @Published var backgroundColor: Color = .blue
    @Published var textColor: Color = .white
    @Published var isFlashing: Bool = true
    @Published var flashingSpeed: Double = 1.0 // 0.5 to 2.0
    @Published var autoColorEnabled: Bool = false

    // Fade durations for independent auto color transitions.
    let backgroundFadeDuration: Double = 1.2
    let textFadeDuration: Double = 1.0

    init() {}
}
