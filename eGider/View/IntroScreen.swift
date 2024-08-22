//
//  IntroScreen.swift
//  eGider
//
//  Created by Tural Babayev on 16.08.2024.
//

import SwiftUI

struct IntroScreen: View {
    //Visibilility Status
    @AppStorage("isFirstTime") private var isFirstTime: Bool = true
    
    var body: some View {
        VStack(spacing: 15){
            Text("\neGider'deki Yenilikler")
                .font(.largeTitle.bold())
                .multilineTextAlignment(.center)
                .padding(.top,65)
                .padding(.bottom, 35)
            
            //Points View
            VStack(alignment: .leading, spacing: 25, content: {
                PointView(symbol: "dollarsign", title: "İşlemler", subTitle: "Kazançlarınızı ve giderlerinizi takip edin.")
                
                PointView(symbol: "chart.bar.fill", title: "Grafikler", subTitle: "Göz alıcı grafik gösterimi kullanarak işlemlerinizi görüntüleyin")
                
                PointView(symbol: "magnifyingglass", title: "Gelişmiş Filtre", subTitle: "Gelişmiş arama ve filtreleme ile istediğiniz harcamaları bulun")
            })
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 25)
            
            Spacer(minLength: 10)
            
            Button(action: {
                isFirstTime = false
            }, label: {
                Text("Devam Et")
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 14)
                    .background(appTint.gradient, in: .rect(cornerRadius: 12))
                    .contentShape(.rect)
                
            })
        }
        .padding(15)
    }
    
    // Point View
    @ViewBuilder
    func PointView(symbol: String, title: String, subTitle: String) -> some View{
        HStack(spacing: 20){
            Image(systemName: symbol)
                .font(.largeTitle)
                .foregroundStyle(appTint.gradient)
                .frame(width: 45)
            
            VStack(alignment: .leading, spacing: 6, content: {
                Text(title)
                    .font(.title3)
                    .fontWeight(.semibold)
                
                Text(subTitle)
                    .foregroundStyle(.gray)
            })
        }
    }
}

#Preview {
    IntroScreen()
}
