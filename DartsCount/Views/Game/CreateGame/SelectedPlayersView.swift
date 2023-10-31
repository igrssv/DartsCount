//
//  SelectedPlayersView.swift
//  DartsCount
//
//  Created by Игорь Сысоев on 10.10.2023.
//

import SwiftUI

struct SelectedPlayersView: View {
    @EnvironmentObject var vm: MainViewModel
    
    var body: some View {
        VStack {
            if !vm.selectedPlayers.isEmpty {
                HStack {
                    ForEach(vm.selectedPlayers, id: \.id) { player in
                        GeometryReader { geometry in
                            let size = geometry.size
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: size.width, height: size.width)
                                .foregroundColor(Color(player.color))
                                .overlay {
                                    Text(player.name)
                                        .foregroundColor(Color("textColor"))
                                        .font(.system(size: 20))
                                        .bold()
                                        .minimumScaleFactor(0.5)
                                        .lineLimit(2)
                                        .padding()
                                }
                                .shadow(radius: 10)
                        }

                    }
                }
                .padding()
            } else {
                MainViewButton(typeButton: .addPlayer)
            }
        }
        .frame(width: UIScreen.main.bounds.size.width , height: UIScreen.main.bounds.size.height * 0.4)
    }
}

struct SelectedPlayersView_Previews: PreviewProvider {
    static private var vm = MainViewModel()
    static var previews: some View {
        SelectedPlayersView()
            .environmentObject(vm)
    }
}
