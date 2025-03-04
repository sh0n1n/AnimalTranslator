//
//  ContentView.swift
//  AnimalTranslator
//
//  Created by Melkor on 3/1/25.
//

import SwiftUI

struct ContentView: View {
    @State private var isPetToHuman = true
    
    var body: some View {
        NavigationView {
            VStack {
                // Заголовок
                Text("Translator")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top, 20)
                
                // Переключатель PET ↔ HUMAN
                HStack {
                    Text(isPetToHuman ? "PET" : "HUMAN")
                        .font(.headline)
                    Spacer()
                    Button(action: {
                        isPetToHuman.toggle()
                    }) {
                        Image(systemName: "arrow.left.arrow.right")
                    }
                    Spacer()
                    Text(isPetToHuman ? "HUMAN" : "PET")
                        .font(.headline)
                }
                .padding()
                
                Spacer()
                
                // Кнопка записи + Выбор питомца
                HStack {
                    Button(action: {}) {
                        VStack {
                            Image(systemName: "mic.circle.fill")
                                .resizable()
                                .frame(width: 80, height: 80)
                                .foregroundColor(.black)
                            Text("Start Speak")
                        }
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(20)
                    .shadow(radius: 5)
                    
                    VStack {
                        Image(isPetToHuman ? "cat.png" : "human.png")
                            .resizable()
                            .frame(width: 80, height: 80)
                            .cornerRadius(10)
                        Image(isPetToHuman ? "dog.png" : "human2.png")
                            .resizable()
                            .frame(width: 80, height: 80)
                            .cornerRadius(10)
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(20)
                    .shadow(radius: 5)
                }
                
                // Изображение питомца
                Image(isPetToHuman ? "cat.png" : "human.png")
                    .resizable()
                    .frame(width: 180, height: 180)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .shadow(radius: 5)
                    .padding()
                
                Spacer()
                
                // Нижний Tab Bar
                HStack {
                    Button(action: {}) {
                        VStack {
                            Image(systemName: "waveform")
                            Text("Translator")
                        }
                    }
                    .frame(maxWidth: .infinity)
                    
                    Button(action: {}) {
                        VStack {
                            Image(systemName: "gearshape")
                            Text("Clicker")
                        }
                    }
                }
                .padding()
                .background(Color.white.opacity(0.9))
                .cornerRadius(20)
                .shadow(radius: 5)
                .padding(.bottom, 10)
            }
            .background(LinearGradient(colors: [.green.opacity(0.2), .white], startPoint: .top, endPoint: .bottom))
        }
    }
}

#Preview {
    ContentView()
}
