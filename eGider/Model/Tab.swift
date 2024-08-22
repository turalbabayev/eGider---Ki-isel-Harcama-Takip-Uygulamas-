//
//  Tab.swift
//  eGider
//
//  Created by Tural Babayev on 16.08.2024.
//

import SwiftUI

enum Tab: String {
    case recents = "Ana Sayfa"
    case search = "Ara"
    case charts = "Grafikler"
    case settings = "Ayarlar"
    
    @ViewBuilder
    var tabContent: some View{
        switch self {
        case .recents:
            Image(systemName: "calendar")
            Text(self.rawValue)
        case .search:
            Image(systemName: "magnifyingglass")
            Text(self.rawValue)
        case .charts:
            Image(systemName: "chart.bar.xaxis")
            Text(self.rawValue)
        case .settings:
            Image(systemName: "gearshape")
            Text(self.rawValue)
        }
    }
}
