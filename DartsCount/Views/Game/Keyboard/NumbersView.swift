//
//  NumbersView.swift
//  DartsCount
//
//  Created by Игорь Сысоев on 03.10.2023.
//

import SwiftUI

struct NumbersView: View {
    @EnvironmentObject var vm: PlayViewModel
    let numbers = [
        [7, 8, 9],
        [4, 5, 6],
        [1 ,2, 3],
        [0]
    ]

    var body: some View {
        VStack {
            ForEach(numbers, id: \.self) { rows in
                HStack {
                    ForEach(rows, id: \.self) { item in
                        Button {
                            vm.tapNumberButton(number: item)
                        } label: {
                            if item == 0 {
                            Capsule()
                                    .foregroundColor(.gray)
                                    .shadow(radius: 20)
                                    .frame(width: 100, height: 60)
                                    .overlay {
                                        Text("\(item)")
                                            .font(.system(size: 30))
                                            .foregroundColor(.white)
                                    }
                                    .padding(.top, 10)
                            } else {
                                Circle()
                                    .foregroundColor(.gray)
                                    .shadow(radius: 20)
                                    .frame(width: 80)
                                    .overlay {
                                        Text("\(item)")
                                            .font(.system(size: 30))
                                            .foregroundColor(.white)
                                    }
                            }
                            
                        }

                            
                    }
                }
            }
        }
    }
}

struct NumbersView_Previews: PreviewProvider {
    static private var vm = PlayViewModel(mainViewModel: MainViewModel())
    static var previews: some View {
        NumbersView()
            .environmentObject(vm)
    }
}
