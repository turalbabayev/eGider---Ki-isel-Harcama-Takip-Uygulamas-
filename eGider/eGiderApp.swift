//
//  eGiderApp.swift
//  eGider
//
//  Created by Tural Babayev on 16.08.2024.
//

import SwiftUI
import WidgetKit

@main
struct eGiderApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear{
                    WidgetCenter.shared.reloadAllTimelines()
                }
        }
        .modelContainer(for: [Transaction.self])
    }
}
