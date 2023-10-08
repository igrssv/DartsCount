//
//  PlayersGameListView.swift
//  DartsCount
//
//  Created by Игорь Сысоев on 03.10.2023.
//

import SwiftUI

struct PlayersGameListView: View {
    @EnvironmentObject var vm: PlayViewModel
    var columns = [
        GridItem(.adaptive(minimum: 100)),
        GridItem(.adaptive(minimum: 100))
    ]
    
    var body: some View {
        VStack {
            LazyVGrid(columns: columns, spacing: 30) {
                ForEach(vm.players.indices) { index in
                    GeometryReader { geometry in
                        let size = geometry.size
                        let customSize = setupSize(player: vm.players[index], size: size)
                        PlayerGameItemView(
                            player: $vm.players[index],
                            width: customSize.width,
                            height: customSize.height)
                    }
                    
                }
                .frame(height: 200)
            }
            .padding()
            Button(action: {
                withAnimation {
                    vm.nextPlayer()
                }
            }, label: {
                Circle()
                    .foregroundColor(.orange)
                    .shadow(radius: 20)
                    .frame(width: 80)
                    .overlay {
                        Text("+")
                            .font(.system(size: 40))
                            .bold()
                            .foregroundColor(.white)
                    }
            })
            // если элемент не выбран и он находится не в том ряду то высота 1 ширина 0.5 элементы ниже остаются с шириной
        }
        
    }
    func setupSize(player: Player, size: CGSize) -> CGSize {
        if vm.scaleCard(player: player) {
            return CGSize(width: size.width * 1, height: size.height * 1)
        } else {
            return CGSize(width: size.width * 0.6, height: size.height * 1)
        }
    }
}

struct PlayersGameListView_Previews: PreviewProvider {
    static private var vm = PlayViewModel(mainViewModel: MainViewModel())
    static var previews: some View {
        PlayersGameListView()
            .environmentObject(vm)
    }
}
