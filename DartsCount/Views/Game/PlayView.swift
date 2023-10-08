//
//  PlayView.swift
//  DartsCount
//
//  Created by Игорь Сысоев on 03.10.2023.
//

import SwiftUI

struct PlayView: View {
    @StateObject private var vm: PlayViewModel
    
    init(mainViewModel: MainViewModel) {
           self._vm = StateObject(wrappedValue: PlayViewModel(mainViewModel: mainViewModel))
       }
    
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    VStack {
                        VStack {
                            PlayersGameListView()
                            // result
                            ScoreGameView()
                            Spacer()
                            IncreaseButtonsView()
                            Divider()
                            HStack {
                                NumbersView()
                                Spacer()
                                ActionsButtonsView()
                            }
                            .padding(.horizontal)
                        }
                        .disabled(vm.winnerOn)
                    }
                    .blur(radius: vm.winnerOn ? 3 : 0)
                    if vm.winnerOn {
                        VStack {
                            Spacer()
                            VStack {
                                
                                Text("Выиграл!")
                                    .font(.title)
                                    .bold()
                                    .padding()
                                    .background(.white.opacity(0.7))
                                    .cornerRadius(20)
//                                PlayerGameItemView(player: $vm.players[vm.currentIndex])
                            }
                            .scaleEffect(1.6)
                            Spacer()
                            Button {
                                withAnimation {
                                    vm.mainVM.showPlay.toggle()
                                }
                            } label: {
                                RoundedRectangle(cornerRadius: 20)
                                    .frame(width: 200, height: 70)
                                    .overlay {
                                        Text("Exit Game")
                                            .foregroundColor(.white)
                                            .font(.system(size: 30))
                                    }
                            }
                            
                        }
                    }
                }
            }
            .environmentObject(vm)
            .padding()
            .navigationTitle("Match")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                Button {
                    vm.mainVM.showPlay.toggle()
                } label: {
                    Text("Cancel")
                }

            }
        }
    }
}

#Preview {
    PlayView(mainViewModel: MainViewModel())
}
