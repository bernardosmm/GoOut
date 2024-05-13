//
//  Evento.swift
//  GoOut
//
//  Created by Princesa Trindade Rebouças Esmeraldo Nunes on 10/05/24.
//

import SwiftUI

struct EventoFeiraView: View {
    
    @State var address = ""
    
    @State var favorited: Bool = false
    
    @State var detents: PresentationDetent = .height(398)
    //incluir acima os @States necessários
    var body: some View {
        NavigationStack {
            List {
                Group {
                    VStack {
                        Text("Feira de Messejana, Rua Cel. Francisco Pereira, 350 - Messejana, Fortaleza - CE")
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
                            Text("Feira Livre")
                                .foregroundStyle(.white)
                                .font(.subheadline)
                                .padding(.horizontal, 20)
                                .padding(.vertical, 10)
                                .background { // background com ViewBuilder
                                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                                        .fill(Color("amarelo"))
                                }
                            Text("Lagoa")
                                .foregroundStyle(.white)
                                .font(.subheadline)
                                .padding(.horizontal, 20)
                                .padding(.vertical, 10)
                                .background { // background com ViewBuilder
                                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                                        .fill(Color("amarelo"))
                                }
                            Text("Messejana")
                                .foregroundStyle(.white)
                                .font(.subheadline)
                                .padding(.horizontal, 20)
                                .padding(.vertical, 10)
                                .background { // background com ViewBuilder
                                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                                        .fill(Color("amarelo"))
                                }
                            
                            Text("Pastel com caldo de cana")
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
                            Feira()
                            Feira1()
                            Feira2()
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
                            Text ("8h - 12h")
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
                            Text("26/05/2024")
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
                        Explore a vibrante Feira da Messejana e visite a estátua de Iracema para uma experiência cultural única em Fortaleza. Sou uma moradora da região apaixonada por Messejana, quero apresentar nossa feira para você que mora em outro bairro ou está visitando Fortaleza e quer fugir de roteiros óbvios. Estaremos eu e alguns amigos, venha em paz e seja bem-vinde à melhor feira do mundooo!!!!
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
            .navigationTitle("Feira da Messejana")
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
            EventoFeiraView()
        }
}
