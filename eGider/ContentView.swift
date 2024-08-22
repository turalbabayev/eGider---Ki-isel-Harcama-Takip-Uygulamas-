//
//  ContentView.swift
//  eGider
//
//  Created by Tural Babayev on 16.08.2024.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("isFirstTime") private var isFirstTime: Bool = true
    //App Lock Preperties
    @AppStorage("isAppLockEnabled") private var isAppLockEnabled: Bool = false
    @AppStorage("lockWhenAppGoesBacground") private var lockWhenAppGoesBacground: Bool = false
    //Active Tab
    @State private var activeTab: Tab = .recents
    var body: some View {
        LockView(lockType: .biometric, lockPin: "", isEnabled: false, lockWhenAppGoesBackground: lockWhenAppGoesBacground) {
            TabView(selection: $activeTab){
                Recents()
                    .tag(Tab.recents)
                    .tabItem { Tab.recents.tabContent }
                Search()
                    .tag(Tab.search)
                    .tabItem { Tab.search.tabContent }
                Graphs()
                    .tag(Tab.charts)
                    .tabItem { Tab.charts.tabContent }
                Settings()
                    .tag(Tab.settings)
                    .tabItem { Tab.settings.tabContent }
            }
            .sheet(isPresented: $isFirstTime, content: {
                IntroScreen()
                    .interactiveDismissDisabled()
            })
        }
        
    }
}

#Preview {
    ContentView()
}
