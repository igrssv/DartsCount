//
//  ScoreGameView.swift
//  DartsCount
//
//  Created by Игорь Сысоев on 04.10.2023.
//

import SwiftUI

struct ScoreGameView: View {
    @EnvironmentObject var vm: PlayViewModel
    
    var body: some View {
        VStack {
            HStack {
                ForEach(vm.historyResult, id: \.self) { item in
                    Capsule()
                        .frame(width: 50, height: 30)
                        .foregroundColor(.gray.opacity(0.7))
                        .overlay {
                            Text(item)
                                .font(.system(size: 15))
                                .padding(5)
                        }
                        .padding(.trailing, 10)
                }
                Spacer()
                Text(vm.tempResult())
                    .font(.system(size: 25))
                    .foregroundColor(.red)
            }
            .frame(height: 36)
            .padding(.horizontal)
            Text(vm.currentResult)
                .font(.system(size: 26))
                .bold()
        }
    }
}

struct ScoreGameView_Previews: PreviewProvider {
    static private var vm = PlayViewModel(mainViewModel: MainViewModel())
    static var previews: some View {
        ScoreGameView()
            .environmentObject(vm)
    }
}
