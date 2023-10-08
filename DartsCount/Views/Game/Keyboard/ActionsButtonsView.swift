//
//  ActionsButtonsView.swift
//  DartsCount
//
//  Created by Игорь Сысоев on 03.10.2023.
//

import SwiftUI

struct ActionsButtonsView: View {
    @EnvironmentObject var vm: PlayViewModel
    var body: some View {
        VStack {
            //clear
            Circle()
                .foregroundColor(.red)
                .shadow(radius: 20)
                .frame(width: 80)
                .overlay {
                    Image(systemName: "eraser.fill")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                }
                .onTapGesture {
                    withAnimation {
                        vm.clearCurrentResult()
                    }
                }
            Button(action: {
                withAnimation {
                    vm.plusCount()
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
            Button(action: {
                withAnimation {
                    vm.nextPlayer()
                }
            }, label: {
                Circle()
                    .foregroundColor(.blue)
                    .shadow(radius: 20)
                    .frame(width: 80)
                    .overlay {
                        Image(systemName: "forward.fill")
                            .font(.system(size: 30))
                            .foregroundColor(.white)
                    }
                    
            })
            Spacer()
        }
    }
}

struct ActionsButtonsView_Previews: PreviewProvider {
    static private var vm = PlayViewModel(mainViewModel: MainViewModel())
    static var previews: some View {
        ActionsButtonsView()
            .environmentObject(vm)
    }
}
