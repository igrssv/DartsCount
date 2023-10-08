//
//  PlayerGameItemView.swift
//  DartsCount
//
//  Created by Игорь Сысоев on 03.10.2023.
//

import SwiftUI

struct PlayerGameItemView: View {
    @Binding var player: Player
    var width: CGFloat
    var height: CGFloat
    var body: some View {
        VStack {
            VStack {
                Text("\(Int(player.score))")
                    .font(.system(size: 45))
                    .bold()
                    .foregroundColor(Color("textColor"))
                Text(player.name)
                    .font(.system(size: 20))
                    .bold()
                    .lineLimit(1)
                    .minimumScaleFactor(0.3)
                    .padding(.horizontal, 3)
                
            }
        }
        .frame(width: width, height: height)
        .background(player.color)
        .cornerRadius(20)
        .shadow(radius: 10)
        .padding(10)
        
    }
}

#Preview {
    PlayerGameItemView(player: .constant(Player.generationPlayers()[0]), width: 200, height: 300)
}


//VStack {
//    VStack {
//        Circle()
//            .shadow(radius: 20)
//            .foregroundColor(player.color)
//            .frame(width: 100)
//            .overlay {
//                Circle()
//                    .trim(from: 0.0, to: (player.score / 301))
//                    .stroke(style: StrokeStyle(lineWidth: 8, lineCap: .round, lineJoin: .round))
//                    .foregroundColor(.red)
//                    .rotationEffect(.degrees(-90))
//                Text("\(Int(player.score))")
//                    .font(.system(size: 45))
//                    .bold()
//            }
//        Text(player.name)
//            .bold()
//    }
//    .frame(width: 130, height: 150)
//    .background(Color("gameCard"))
//    .cornerRadius(20)
//}
//.padding()
