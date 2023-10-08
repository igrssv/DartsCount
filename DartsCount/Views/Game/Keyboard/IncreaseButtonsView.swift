//
//  IncreaseButtonsView.swift
//  DartsCount
//
//  Created by Игорь Сысоев on 03.10.2023.
//

import SwiftUI

struct IncreaseButtonsView: View {
    @EnvironmentObject var vm: PlayViewModel
    var body: some View {
        HStack {
            ForEach(TypeIncreaseButtons.allCases, id: \.hashValue) { item in
                IncreaseButtonView(typeAction: item)
            }
            .environmentObject(vm)
        }
    }
}

struct IncreaseButtonsView_Previews: PreviewProvider {
    static private var vm = PlayViewModel(mainViewModel: MainViewModel())
    static var previews: some View {
        IncreaseButtonsView()
            .environmentObject(vm)
    }
}
