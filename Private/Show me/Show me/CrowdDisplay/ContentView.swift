import SwiftUI

struct ContentView: View {
    @StateObject private var settings = DisplaySettings()
    @State private var flashToWhite = false
    @State private var flashTimer: Timer?
    @State private var backgroundAutoColorTimer: Timer?
    @State private var textAutoColorTimer: Timer?
    @State private var isShowingSettings = false

    private var displayedBackgroundColor: Color {
        settings.isFlashing && flashToWhite ? .white : settings.backgroundColor
    }
    
    var body: some View {
        ZStack {
            displayedBackgroundColor
                .ignoresSafeArea()
                .animation(.none, value: flashToWhite)
                .animation(.linear(duration: settings.backgroundFadeDuration), value: settings.backgroundColor)

            VStack {
                HStack {
                    Spacer()

                    Button {
                        isShowingSettings.toggle()
                    } label: {
                        Image(systemName: isShowingSettings ? "xmark.circle.fill" : "slider.horizontal.3")
                            .font(.title2)
                            .foregroundStyle(.primary)
                            .frame(width: 44, height: 44)
                            .background(.ultraThinMaterial, in: Circle())
                    }
                    .padding(.top, 12)
                    .padding(.trailing, 16)
                }

                Spacer()

                Text(settings.displayText)
                    .font(.system(size: 72, weight: .bold, design: .default))
                    .foregroundColor(settings.textColor)
                    .animation(.linear(duration: settings.textFadeDuration), value: settings.textColor)
                    .multilineTextAlignment(.center)
                    .padding(40)

                Spacer()
            }

            if isShowingSettings {
                VStack {
                    HStack {
                        Spacer()

                        VStack(spacing: 12) {
                            HStack {
                                Text("Text:")
                                    .font(.caption)
                                    .foregroundColor(.gray)

                                TextField("Enter text", text: $settings.displayText)
                                    .textFieldStyle(.roundedBorder)
                                    .font(.caption)
                            }

                            HStack {
                                Text("Background:")
                                    .font(.caption)
                                    .foregroundColor(.gray)

                                ColorPicker("", selection: $settings.backgroundColor)
                                    .labelsHidden()
                                    .disabled(settings.autoColorEnabled)

                                Spacer()
                            }

                            HStack {
                                Text("Text Color:")
                                    .font(.caption)
                                    .foregroundColor(.gray)

                                ColorPicker("", selection: $settings.textColor)
                                    .labelsHidden()
                                    .disabled(settings.autoColorEnabled)

                                Spacer()
                            }

                            HStack {
                                Toggle("Auto Color", isOn: $settings.autoColorEnabled)
                                    .font(.caption)
                            }

                            HStack {
                                Toggle("Flashing", isOn: $settings.isFlashing)
                                    .font(.caption)
                            }

                            if settings.isFlashing {
                                HStack {
                                    Text("Speed:")
                                        .font(.caption)
                                        .foregroundColor(.gray)

                                    Slider(value: $settings.flashingSpeed, in: 0.5...2.0)
                                        .font(.caption)
                                }
                            }
                        }
                        .padding(12)
                        .frame(maxWidth: 320)
                        .background(Color(UIColor.systemBackground).opacity(0.96))
                        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                        .shadow(color: .black.opacity(0.18), radius: 16, x: 0, y: 8)
                        .padding(.top, 68)
                        .padding(.trailing, 16)
                    }

                    Spacer()
                }
            }
        }
        .onAppear {
            restartFlashTimer()
            updateAutoColorTimers()
        }
        .onDisappear {
            stopAllTimers()
        }
        .onChange(of: settings.isFlashing) { _ in
            restartFlashTimer()
        }
        .onChange(of: settings.flashingSpeed) { _ in
            restartFlashTimer()
        }
        .onChange(of: settings.autoColorEnabled) { _ in
            updateAutoColorTimers()
        }
    }

    private func restartFlashTimer() {
        flashTimer?.invalidate()
        flashTimer = nil

        flashToWhite = false

        guard settings.isFlashing else { return }

        let interval = max(0.05, (0.6 / max(settings.flashingSpeed, 0.1)) / 2.0)
        flashTimer = Timer.scheduledTimer(withTimeInterval: interval, repeats: true) { _ in
            flashToWhite.toggle()
        }
    }

    private func updateAutoColorTimers() {
        backgroundAutoColorTimer?.invalidate()
        textAutoColorTimer?.invalidate()
        backgroundAutoColorTimer = nil
        textAutoColorTimer = nil

        guard settings.autoColorEnabled else { return }

        scheduleNextBackgroundColorChange()
        scheduleNextTextColorChange()
    }

    private func scheduleNextBackgroundColorChange() {
        settings.backgroundColor = randomColor()
        let nextDelay = Double.random(in: 0.9...2.1)
        backgroundAutoColorTimer = Timer.scheduledTimer(withTimeInterval: nextDelay, repeats: false) { _ in
            scheduleNextBackgroundColorChange()
        }
    }

    private func scheduleNextTextColorChange() {
        settings.textColor = randomColor()
        let nextDelay = Double.random(in: 0.7...2.1)
        textAutoColorTimer = Timer.scheduledTimer(withTimeInterval: nextDelay, repeats: false) { _ in
            scheduleNextTextColorChange()
        }
    }

    private func randomColor() -> Color {
        Color(
            red: Double.random(in: 0...1),
            green: Double.random(in: 0...1),
            blue: Double.random(in: 0...1)
        )
    }

    private func stopAllTimers() {
        flashTimer?.invalidate()
        backgroundAutoColorTimer?.invalidate()
        textAutoColorTimer?.invalidate()
        flashTimer = nil
        backgroundAutoColorTimer = nil
        textAutoColorTimer = nil
    }
}

#Preview {
    ContentView()
}
