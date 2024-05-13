//
//  Evento.swift
//  GoOut
//
//  Created by Princesa Trindade Rebouças Esmeraldo Nunes on 10/05/24.
//

import SwiftUI

struct EventoTrilhaView: View {
    
    @State var address = ""
    
    @State var favorited: Bool = false
    
    @State var detents: PresentationDetent = .height(398)
    //incluir acima os @States necessários
    var body: some View {
        NavigationStack {
            List {
                Group {
                    VStack {
                        Text("Parque Estadual do Cocó, Av. Engenheiro Santana Júnior, s/n - Cocó, Fortaleza - CE")
                    }
                    HStack {
                        Image("pinlaranja")
                            .resizable()
                            .frame(width: 20, height: 25)
                        
                        Text("Evento acontecendo agora!")
                    }
                    ScrollView(.horizontal) {
                        HStack {
                            //
                            Text("Trilha")
                                .foregroundStyle(.white)
                                .font(.subheadline)
                                .padding(.horizontal, 20)
                                .padding(.vertical, 10)
                                .background { // background com ViewBuilder
                                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                                        .fill(Color("amarelo"))
                                }
                            Text("Natureza")
                                .foregroundStyle(.white)
                                .font(.subheadline)
                                .padding(.horizontal, 20)
                                .padding(.vertical, 10)
                                .background { // background com ViewBuilder
                                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                                        .fill(Color("amarelo"))
                                }
                            Text("Família")
                                .foregroundStyle(.white)
                                .font(.subheadline)
                                .padding(.horizontal, 20)
                                .padding(.vertical, 10)
                                .background { // background com ViewBuilder
                                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                                        .fill(Color("amarelo"))
                                }
                            
                            Text("Aventura")
                                .foregroundStyle(.white)
                                .font(.subheadline)
                                .padding(.horizontal, 20)
                                .padding(.vertical, 10)
                                .background { // background com ViewBuilder
                                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                                        .fill(Color("amarelo"))
                                }
                            
                            Text("Público")
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
                            Trilha()
                            Trilha1()
                            Trilha2()
                        }
                    }
                    VStack(){
                        Text ("Informações relevantes:")
                            .font(.headline)
                    }
                    HStack(alignment: .center){
                        VStack {
                            Image(systemName: "clock")
                                .resizable()
                                .frame(width: 42, height: 42)
                                .padding(.top)
                            Text ("Horário")
                            Text ("8h - 11h")
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
                            Text("16/05/2024")
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
                            Text ("Valor")
                            Text ("Gratuito")
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
                        Nós da @ecotour.fortal te convidamos para conhecer maravilhas da biodiversidade local em uma trilha guiada pelo Parque do Cocó. Descubra sua biodiversidade em uma caminhada rejuvenescedora. E o melhor, de graça.  Venderemos lanche para os interessados, confirmar interesse via direct no Instagram da EcoTour. Evento recomendado para criança. Contaremos com intérprete de libras.
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
            .navigationTitle("Trilha no Cocó")
            .toolbar(content: {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        print("Favoritado")
                        favorited.toggle()
                    }, label: {
                        Image(systemName: "star")
                            .padding(5)
                            .background( Circle()
                                .fill(.gray)
                                .opacity(0.3))
                            .foregroundStyle(favorited ? .amarelo : .gray)
                    })
                }
            })
        }
        .presentationDetents([.height(398), .large], selection: $detents)
        
    }
}

#Preview {
    ContentView()
        .sheet(isPresented: .constant(true)) {
            EventoTrilhaView()
        }
}
