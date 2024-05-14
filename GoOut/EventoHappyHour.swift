//
//  Evento.swift
//  GoOut
//
//  Created by Princesa Trindade Rebouças Esmeraldo Nunes on 10/05/24.
//

import SwiftUI

struct EventoHappyHour: View {
    
    @State var address = ""
    
    @State var favorited: Bool = false
    
    @State var detents: PresentationDetent = .height(398)
    //incluir acima os @States necessários
    var body: some View {
        NavigationStack {
            List {
                Group {
                    VStack {
                        Text("Av. Treze de Maio, 2274 - Benfica, Fortaleza - CE")
                    }
                    HStack {
                        Image("pinverde")
                            .resizable()
                            .frame(width: 20, height: 25)
                        
                        Text("Evento futuro")
                    }
                    ScrollView(.horizontal) {
                        HStack {
                            //
                            Text("Bar")
                                .foregroundStyle(.white)
                                .font(.subheadline)
                                .padding(.horizontal, 20)
                                .padding(.vertical, 10)
                                .background { // background com ViewBuilder
                                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                                        .fill(Color("amarelo"))
                                }
                            Text("Happy Hour")
                                .foregroundStyle(.white)
                                .font(.subheadline)
                                .padding(.horizontal, 20)
                                .padding(.vertical, 10)
                                .background { // background com ViewBuilder
                                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                                        .fill(Color("amarelo"))
                                }
                            Text("Academy")
                                .foregroundStyle(.white)
                                .font(.subheadline)
                                .padding(.horizontal, 20)
                                .padding(.vertical, 10)
                                .background { // background com ViewBuilder
                                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                                        .fill(Color("amarelo"))
                                }
                            
                            Text("Litrão")
                                .foregroundStyle(.white)
                                .font(.subheadline)
                                .padding(.horizontal, 20)
                                .padding(.vertical, 10)
                                .background { // background com ViewBuilder
                                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                                        .fill(Color("amarelo"))
                                }
                            
                            Text("Apple")
                                .foregroundStyle(.white)
                                .font(.subheadline)
                                .padding(.horizontal, 20)
                                .padding(.vertical, 10)
                                .background { // background com ViewBuilder
                                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                                        .fill(Color("amarelo"))
                                }
                        }
                    }
                    ScrollView(.horizontal) {
                        HStack {
                            HappyHour()
                            HappyHour1()
                            HappyHour2()
                        }
                    }
                    VStack {
                        Text("Informações relevantes:")
                            .font(.headline)
                    }
                    HStack(alignment: .center) {
                        VStack {
                            Image(systemName: "clock")
                                .resizable()
                                .frame(width: 42, height: 42)
                                .padding(.top)
                            Text("Horário")
                            Text("18hrs")
                                .padding(.bottom)
                                .font(.caption)
                        }
                        .frame(width: 101, height: 106)
                        .background(.amarelo)
                        .cornerRadius(20)
                        .foregroundStyle(.white)
                        .padding(0.30)
                        VStack {
                            Image(systemName: "calendar")
                                .resizable()
                                .frame(width: 42, height: 42)
                                .padding(.top)
                            Text("Data")
                            Text("17/05/2024")
                                .padding(.bottom)
                                .font(.caption)
                        }
                        .frame(width: 101, height: 106)
                        .background(.amarelo)
                        .cornerRadius(20)
                        .foregroundStyle(.white)
                        VStack {
                            Image(systemName: "dollarsign.circle")
                                .resizable()
                                .frame(width: 42, height: 42)
                                .padding(.top)
                            Text("Valor")
                            Text("O que consumir")
                                .padding(.bottom)
                                .font(.caption)
                        }
                        .frame(width: 101, height: 106)
                        .background(.amarelo)
                        .cornerRadius(20)
                        .foregroundStyle(.white)
                    }
                    .padding(.horizontal)
                    VStack {
                        Text("Detalhes do Passeio:")
                            .font(.headline)
                    }
                    VStack {
                        Text("""
                        Vamos celebrar a entrega de mais um Challenge? Chama a galera e bora fofocar bem muito em uma mesa de bar furreca com direito à cerveja gelada e altíssimo grau de insalubridade! Pra que melhor, não é mesmo?
                        """)
                        .font(.subheadline)
                        
                    }
                    VStack {
                        Text("Vamos dar uma volta?")
                            .font(.headline)
                    }
                    ZStack {
                        RoundedRectangle(cornerRadius: 12, style: .continuous)
                            .foregroundStyle(.amarelo)
                            .frame(width: 370, height: 50)
                            .aspectRatio(1.618, contentMode: .fit)
                        Text("Let's go out! | Encontre a sua comunidade")
                            .foregroundStyle(.white)
                            .font(.subheadline)
                            .underline()
                    }
                }
                .listRowSeparator(.hidden)
                .listRowBackground(Color.clear)
            }
            .listStyle(.plain)
            .background(Color(uiColor: .secondarySystemBackground))
            .navigationTitle("Happy Hour Academy")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        print("Favoritado")
                        favorited.toggle()
                    } label: {
                        Image(systemName: "star")
                            .padding(5)
                            .background( Circle()
                                .fill(.gray)
                                .opacity(0.3))
                            .foregroundStyle(favorited ? .amarelo : .gray)
                    }
                }
            }
        }
        .presentationDetents([.height(398), .large], selection: $detents)
        
    }
}

#Preview {
    ContentView()
        .sheet(isPresented: .constant(true)) {
            EventoHappyHour()
        }
}
