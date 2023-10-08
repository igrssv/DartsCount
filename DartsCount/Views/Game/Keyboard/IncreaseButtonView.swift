//
//  IncreaseButtonView.swift
//  DartsCount
//
//  Created by Игорь Сысоев on 04.10.2023.
//

import SwiftUI

struct IncreaseButtonView: View {
    @EnvironmentObject var vm: PlayViewModel
    let typeAction: TypeIncreaseButtons
    
    private func setupColors() -> Color{
        switch typeAction {
        case .multiplyByTwo:
            return .red.opacity(0.7)
        case .multiplyByThree:
            return .red.opacity(0.8)
        case .twentyFive:
            return .green.opacity(0.9)
        case .fifty:
            return .red
        }
    }
    
    var body: some View {
        Capsule()
            .foregroundColor(setupColors())
            .shadow(radius: 20)
            .frame(width: 70, height: 50)
            .padding(11)
            .overlay {
                Text(typeAction.rawValue)
                    .font(.system(size: 20))
                    .foregroundColor(.white)
            }
            .onTapGesture {
                withAnimation {
                    vm.increaseButtons(typeButton: typeAction)
                }
            }
    }
}

struct IncreaseButtonView_Previews: PreviewProvider {
    static private var vm = PlayViewModel(mainViewModel: MainViewModel())
    static var previews: some View {
        IncreaseButtonView(typeAction: .multiplyByTwo)
            .environmentObject(vm)
    }
}
