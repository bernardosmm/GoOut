//
//  FormularioView.swift
//  GoOut
//
//  Created by Princesa Trindade Rebouças Esmeraldo Nunes on 08/05/24.
//

import SwiftUI

struct FormularioView: View {
    
    @State private var date = Date()
    let dateRange: ClosedRange<Date> = {
        let calendar = Calendar.current
        let startComponents = DateComponents(year: 2024, month: 5, day: 16)
        let endComponents = DateComponents(year: 2024, month: 12, day: 31)
        return calendar.date(from: startComponents)!
        ...
        calendar.date(from: endComponents)!
    }()
    
    struct BackButton: View {
        let action: () -> Void
        
        var body: some View {
            Button(action: action) {
                Image(systemName: "arrow.backward.circle.fill")
            }
            .symbolVariant(.circle.fill)
            .font(.title)
        }
    }
    var body: some View {
        NavigationStack {
            List {
                
                Group {
                    
                    // Row nome do evento
                    VStack(alignment: .leading) {
                        Text("Nome do Evento")
                            .bold()
                            .foregroundStyle(.gray)
                        TextField("Encontro da Turma, Passeio pela Orla...", text: .constant(""))
                            .padding()
                            .background {
                                RoundedRectangle(cornerRadius: 11)
                                    .fill(.white)
                            }
                    }
                    
                    // Row descrição do evento
                    VStack(alignment: .leading) {
                        Text("Descrição")
                            .bold()
                            .foregroundStyle(.gray)
                        TextField("Adicione uma descrição do seu evento", text: .constant(""))
                            .padding()
                            .frame(height: 100)
                            .background {
                                RoundedRectangle(cornerRadius: 11)
                                    .fill(.white)
                            }
                    }
                    
                    // Row endereço do evento
                    VStack(alignment: .leading) {
                        Text("Endereço")
                            .bold()
                            .foregroundStyle(.gray)
                        TextField("Av. Treze de Maio, 2081", text: .constant(""))
                            .padding()
                            .background {
                                RoundedRectangle(cornerRadius: 11)
                                    .fill(.white)
                            }
                    }
                    
                    //Row data do evento
                    HStack {
                        Text("Data do Evento")
                            .bold()
                            .foregroundStyle(.gray)
                        DatePicker(
                            "",
                            selection: $date,
                            in: dateRange,
                            displayedComponents: [.date]
                        )
                    }
                    
                    //Row horário do eventp
                    HStack {
                        Text("Horário do Evento")
                            .bold()
                            .foregroundStyle(.gray)
                        DatePicker(
                            "",
                            selection: $date,
                            in: dateRange,
                            displayedComponents: [.hourAndMinute]
                        )
                        DatePicker(
                            "",
                            selection: $date,
                            in: dateRange,
                            displayedComponents: [.hourAndMinute]
                        )
                    }
                    
                    // Row imagens
                    VStack(alignment: .leading) {
                        Text("Imagem")
                            .bold()
                            .foregroundStyle(.gray)
                        TextField("Av. Treze de Maio, 2081", text: .constant(""))
                            .padding()
                            .background {
                                RoundedRectangle(cornerRadius: 11)
                                    .fill(.white)
                            }
                    }
                    // Row link de comunidade
                    VStack(alignment: .leading) {
                        Text("Link da Comunidade")
                            .bold()
                            .foregroundStyle(.gray)
                        TextField("Insira Link de Acesso à Comunidade (Instagram, Discord...", text: .constant(""))
                            .padding()
                            .background {
                                RoundedRectangle(cornerRadius: 11)
                                    .fill(.white)
                            }
                    }
                    
                }
                .listRowSeparator(.hidden)
                .listRowBackground(Color.clear)
            }
            .listStyle(.plain)
            .background(Color(uiColor: .secondarySystemBackground))
            .navigationTitle("Criar Evento")
            .navigationBarTitleDisplayMode(.inline)

        }
    }
}

#Preview {
    ContentView()
        .sheet(isPresented: .constant(true), content: {
            FormularioView()
        })
}
