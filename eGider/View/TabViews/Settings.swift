//
//  Settings.swift
//  eGider
//
//  Created by Tural Babayev on 16.08.2024.
//

import SwiftUI

struct Settings: View {
    //User Properties
    @AppStorage("userName") private var userName: String = ""
    //App Lock Preperties
    @AppStorage("isAppLockEnabled") private var isAppLockEnabled: Bool = false
    @AppStorage("lockWhenAppGoesBacground") private var lockWhenAppGoesBacground: Bool = false
    var body: some View {
        NavigationStack{
            List{
                Section("Kullanıcı Adı"){
                    TextField("iJustine", text: $userName)
                }
                
                Section("Uygulama Kilidi"){
                    Toggle("Uygulama Kilidini Etkinleştir", isOn: $isAppLockEnabled)
                    
                    if isAppLockEnabled{
                        Toggle("Uygulama Arka Plana Geçtiğinde Kilitle", isOn: $lockWhenAppGoesBacground)
                    }
                }
            }
            .navigationTitle("Ayarlar")
        }
    }
}

#Preview {
    ContentView()
}
