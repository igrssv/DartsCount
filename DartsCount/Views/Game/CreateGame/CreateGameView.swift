//
//  CreateGameView.swift
//  DartsCount
//
//  Created by Игорь Сысоев on 29.10.2023.
//

import SwiftUI

struct CreateGameView: View {
    @State private var set = 1
    var body: some View {
        NavigationView {
            VStack {
                HStack(alignment: .bottom) {
                    Text("Количество сетов")
                        .font(.system(size: 24))
                        .bold()
                    Spacer()
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 38, height: 34)
                        .foregroundColor(.gray.opacity(0.5))
                        .overlay {
                            Text(String(set))
                                .font(.system(size: 20))
                                .bold()
                                .minimumScaleFactor(0.4)
                                .lineLimit(1)
                        }
                    Button {
                        withAnimation {
                            set -= 1
                        }
                    } label: {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 34, height: 34)
                            .foregroundColor(.red.opacity(0.6))
                            .overlay {
                                Text("-")
                                    .font(.system(size: 20))
                                    .bold()
                            }
                    }
                    Button {
                        withAnimation {
                            set += 1
                        }
                    } label: {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 34, height: 34)
                            .foregroundColor(.green.opacity(0.6))
                            .overlay {
                                Text("+")
                                    .font(.system(size: 20))
                                    .bold()
                            }
                    }

                    
                        
                }
                Text("Легов для победы")
                Text("Количество очков")
                
            }
            .padding()
            .navigationTitle("Create game")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar(content: {
                Button("Cancel") {
                    
                }
            })
        }
    }
}

#Preview {
    CreateGameView()
}


